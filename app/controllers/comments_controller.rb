class CommentsController < ApplicationController
  include ApplicationHelper
  before_action :authenticate_user!

  def create
    if params[:comment][:tuep] == "text"
      @post = Text.find(params[:comment][:resourceid])
    end
    @comment = Comment.create(params.require(:comment).permit(:content, :resourceid, :tuep))
    @comment.userid = current_user.id
    if @comment.save
      ex = Exam.find(@post.exam_id)
      le = Lecturer.find(ex.lecturer_id)
      co = Course.find(le.course_id)
      un = University.find(co.university_id)
      redirect_to university_course_lecturer_exam_text_path(un, co, le, ex, @post)
    else

    end

  end
end
