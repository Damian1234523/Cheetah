class LecturersController < ApplicationController
  include ApplicationHelper
  before_action :authenticate_user!
  def index
    @lecturer = Lecturer.all
  end

  def create
    @lecturer = Lecturer.create(params.require(:lecturer).permit(:name, :lastname, :title, :course_id))
    @lecturer.username = current_user.username
    @lecturer.user_id = current_user.id
    if @lecturer.save
      redirect_to controller: 'lecturers', action: 'show', id: @lecturer.id
    else
      render :action => :new
    end
  end

  def new
    @lecturer = Lecturer.new
  end

  def show
    @lecturer = Lecturer.find(params[:id])
    id = @lecturer.id
    @exam = Exam.where(:lecturer_id => id)

    #@le = Lecturer.find( @exam.lecturer_id)
    @co = Course.find( @lecturer.course_id)
    @un = University.find( @co.university_id)

    init_bread
  end

  def edit
  end

  def destroy
  end
end
