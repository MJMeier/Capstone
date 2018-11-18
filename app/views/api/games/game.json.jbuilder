json.array! @games.each do |game|
  json.home_team game.home_team
  json.home_score game.home_score
  json.away_team game.away_team
  json.away_score game.away_score
  json.date game.date
end