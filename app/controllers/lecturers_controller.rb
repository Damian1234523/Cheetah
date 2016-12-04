class LecturersController < ApplicationController
  before_action :authenticate_user!
  def index
    @lecturer = Lecturer.all
  end

  def create

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
