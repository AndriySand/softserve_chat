class MessagesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @messages = Message.all
  end

  def create
    @message = current_user.messages.create(message_params)
  end

  private

  def message_params
    params.require(:message).permit(:body, :user_id)
  end
end
