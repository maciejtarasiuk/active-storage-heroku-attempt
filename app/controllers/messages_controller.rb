class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show

  end

  def new

  end

  def create
    @message = Message.create! params.require(:message).permit(:title, :content)
    @message.images.attach(params[:message][:images])
    redirect_to @message
  end
end
