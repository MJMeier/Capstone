class Api::UsersController < ApplicationController
  
  def index
    @users = User.all

    render "index.json.jbuilder"
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if @user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: "User not created"}, status: :bad_request
    end    
  end

  # def point_total

  #   @winner = home_nickname
  #   if home_score > visitor_score
  #     else
  #       @winner = visitor_nickname
  #   end

  #   if @winner == users_pick
  #     they get confidence_point
      
  #   end 
  # end
end
