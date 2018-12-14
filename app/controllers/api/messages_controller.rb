class Api::MessagesController < ApplicationController

  def index
    @messages = Message.all

    render "index.json.jbuilder"
  end

  def create
    @message = Message.new(
      user_id: current_user.id,
      message: params[:message]
      )

    if @message.save
      render "show.json.jbuilder"
    else
      render json: {errors: "Message not created"}, status: :bad_request
    end 
  end
end
