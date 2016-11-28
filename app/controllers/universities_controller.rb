class UniversitiesController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def create
    @university = University.new(params[:name, :address, :typ])
    if(@university.save)
      redirect_to :action =>  :index
    else
      render :action => :new
    end
  end

  def edit
  end

  def destroy
  end

  def new
   @university = University.new
  end
end
