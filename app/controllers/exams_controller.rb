class ExamsController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def create
    @exam = Exam.create(params.require(:exam).permit(:name, :year, :description, :lecturer_id))
    #@exam.username = current_user.username
    #@exam.user_id = current_user.id fehlt noch in datenbank. notwendig?
    if @exam.save
      redirect_to controller: 'exams', action: 'show', id: @exam.id
    else
      render :action => :new
    end
  end

  def new
    @exam = Exam.new
  end

  def edit
  end

  def destroy
  end

  def show
    @exam = Exam.find(params[:id])
    id = @exam.id
    @text = Text.where(:exam_id => id)

    @le = Lecturer.find(@exam.lecturer_id)
    @co = Course.find(@le.course_id)
    @un = University.find(@co.university_id)
  end
end
