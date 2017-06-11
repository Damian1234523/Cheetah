class CommentsController < ApplicationController
  def create
    if params[:comment][:type] == "text"
      @post = Text.find(params[:comment][:resourceid])
      @test = 5
    end
  end
end
