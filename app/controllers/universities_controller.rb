class UniversitiesController < ApplicationController
  before_action :authenticate_user!
  def index
    @university = University.all
  end

  def create
    @university = University.create(university_id: @university.id)
    @university.name = "test"
    @university.username = current_user.username
    @university.user_id = current_user.id
    if @university.save
      redirect_to :action =>  :index
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
  end
end
