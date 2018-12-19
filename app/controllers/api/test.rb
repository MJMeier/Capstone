require "nba_api_wrapper"

# date = "20181205"
date = Time.now.strftime("%Y%m%d")
games = NBA::Game.get_games(date)["sports_content"]["games"]["game"]
pp games

# games.each do |game|
#   home_nickname = game["home"]["nickname"]
#   home_score = game["home"]["score"]
#   visitor_nickname = game["visitor"]["nickname"]
#   visitor_score = game["visitor"]["score"]
#   p "Game: #{home_nickname} (#{home_score}) vs #{visitor_nickname} (#{visitor_score})"
# end

# # date = Time.now.strftime("%Y%m%d")
# games = NBA::Stats::Team.get_teams
# # games = NBA::Game.get_games(date)["sports_content"]["games"]["game"]
# p 'games'
# p games