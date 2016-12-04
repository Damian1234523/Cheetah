class LecturersController < ApplicationController
  before_action :authenticate_user!
  def index
    @lecturer = Lecturer.all
  end

  def create
    @lecturer = Lecturer.create(params.require(:lecturer).permit(:name, :lastname, :title, :course_id))
    @lecturer.username = current_user.username
    @lecturer.user_id = current_user.id
    if @lecturer.save
      render :action => :show
    else
      render :action => :new
    end
  end

  def new
    @lecturer = Lecturer.new
  end

  def show
    @lecturer = Lecturer.find(params[:id])
  end

  def edit
  end

  def destroy
  end
end
