class UniversitiesController < ApplicationController
  before_action :authenticate_user!
  def index
    @university = University.all
  end

  def create
    @university = University.new(params.require(:university).permit(:name, :address, :typ))
    if(@university.save)
      redirect_to :action =>  :index
    else
      render :action => :new
    end
  end

  def edit
    @university = University.find params[:id]
  end

  def destroy
    @univeristy = University.find params[:id]
  end

  def new
   @university = University.new
  end
end
