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
      test = 0
    else
      test = 1
    end

  end
end
