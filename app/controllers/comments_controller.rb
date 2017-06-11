class CommentsController < ApplicationController
  def create
    if params[:comment][:tuep] == "text"
      @post = Text.find(params[:comment][:resourceid])
    end
    @comment = Comment.create(params.require(:comment).permit(:content, :resourceid, :tuep))
    @test = 0
    @comment.userid=current_user.id
    if @comment.save
      test = 0
    else
      test = 1
    end

  end
end
