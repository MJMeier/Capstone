class Api::UserGamesController < ApplicationController
  def index
    @user_games = UserGame.where(
      user_id: current_user.id
      )
    render "index.json.jbuilder"
  end

  def create
    @user_game = UserGame.find_or_initialize_by(
      user_id: current_user.id,
      game_id: params["game_id"],
    )
    @user_game.confidence_point = params["confidence_point"]
    @user_game.users_pick = params["users_pick"]
    @user_game.game_date = params["game_date"]

    @user_game.save!
    if @user_game.save
      render json: {message: "Pick Made"}
    else
      render json: {errors: @user_game.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @user_game = UserGame.find_by(id: params[:id])
    @user_game.user_id = params["user_id"]
    @user_game.game_id = params["game_id"]
    @user_game.confidence_point = params["confidence_point"]
    @user_game.users_pick = params["users_pick"]
    
    if @user_game.save!
      render "show.json.jbuilder"
    else 
      render json: {errors: @user_game.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def all_picks
    @user_games = UserGame.all

    render "allpicks.json.jbuilder"
  end
end


