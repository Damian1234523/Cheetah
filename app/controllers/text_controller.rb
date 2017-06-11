class TextController < ApplicationController
  include ApplicationHelper
  before_action :authenticate_user!

  def index
    @text = Text.all
  end

  def create
    @text = Text.create(params.require(:text).permit(:title, :content, :description, :exam_id))
    @text.user_id = current_user.id

    if @text.save
      redirect_to controller: 'text', action: 'show', id: @text.id
    else
      render :action => :new
    end
  end

  def new
    @text = Text.new
  end

  def show
    @text = Text.find(params[:id])
    @resourceid = @text.id
    @type = "text"

  end

  def edit
  end

  def destroy
  end
end
