json.user_games @user_games.each do |user_games|
  if user_games.game_date == Date.today.strftime("%Y%m%d")
    json.user_name user_games.user.name
    json.game_id  user_games.game_id
    json.confidence_point  user_games.confidence_point 
    json.users_pick  user_games.users_pick 
    json.game_date user_games.game_date
  end
end