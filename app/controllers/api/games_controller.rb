class Api::GamesController < ApplicationController
  
  require "nba_api_wrapper"

  def index
# @games = Game.all
# date = "20181205"
    date = Time.now.strftime("%Y%m%d")
    @games = NBA::Game.get_games(date)["sports_content"]["games"]["game"]
#pp games

    game = @games.each do |game|
      home_nickname = game["home"]["nickname"]
      home_score = game["home"]["score"]
      visitor_nickname = game["visitor"]["nickname"]
      visitor_score = game["visitor"]["score"]
      p "Game: #{home_nickname} (#{home_score}) vs #{visitor_nickname} (#{visitor_score})"
    end

    render "game.json.jbuilder"
  end

  def show
    input_id = params["id"]
    @game = Game.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end
