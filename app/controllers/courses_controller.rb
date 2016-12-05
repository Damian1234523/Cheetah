class CoursesController < ApplicationController
  before_action :authenticate_user!
  def index
    @course = Course.all
  end

  def create

    @course = Course.create(params.require(:course).permit(:name, :description, :university_id))
    @course.username = current_user.username
    @course.user_id = current_user.id
    if @course.save
      redirect_to controller: 'courses', action: 'show', id: @course.id
    else
      render :action => :new
    end
  end

  def edit
  end

  def destroy
  end

  def new

    @course = Course.new
  end

  def show
    @course = Course.find(params[:id])
    id = @course.id
    @lecturer = Lecturer.where(:course_id => id)
  end
end
