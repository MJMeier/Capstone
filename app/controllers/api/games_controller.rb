class Api::GamesController < ApplicationController
  
  def index
    @games = Game.all
    render "game.json.jbuilder"
  end

  def show
    input_id = params["id"]
    @game = Game.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end
