# json.array! @games.each do |game|
#   json.id game.id
#   json.home_team game.home_team
#   json.home_score game.home_score
#   json.away_team game.away_team
#   json.away_score game.away_score
#   json.date game.date
#   json.confidence_point nil
#   json.users_pick nil
# end
json.array! @games.each do |game|
  json.id game["id"]
  json.home_nickname game["home"]["nickname"]
  json.home_score game["home"]["score"]
  json.visitor_nickname game["visitor"]["nickname"]
  json.visitor_score game["visitor"]["score"]
  json.date game["date"]
  json.confidence_point nil
  json.users_pick nil
end