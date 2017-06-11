class CommentsController < ApplicationController
  def create
    if params[:comment][:type] == "text"
      @post = Text.find(params[:comment][:resourceid])
    end
    @comment = Comment.create(params.require(:comment).permit(:content, :resourceid, :type))
  end
end
