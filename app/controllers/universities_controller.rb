class UniversitiesController < ApplicationController
  before_action :authenticate_user!
  include ApplicationHelper

  def index
    @university = University.all
    init_bread
  end

  def create
    @university = University.create(params.require(:university).permit(:name, :address, :typ))
    @university.username = current_user.username
    @university.user_id = current_user.id
    if @university.save
      redirect_to @university
    else
      render :action => :new
    end
  end

  def edit
    @university = University.find params[:id]
  end

  def destroy
    @university = University.find params[:id]
    @university.destroy
    redirect_to :action => :index
  end

  def new
   @university = University.new
  end

  def show
    @university = University.find(params[:id])
    id = @university.id
    @course = Course.where(:university_id => id)
    init_bread
  end
end
