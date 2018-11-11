# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Mike Meier", email: "mike@email.com", password: "password")
User.create!(name: "Jimmy Cookie", email: "jimmy@email.com", password: "password")
User.create!(name: "Dylan Muffin", email: "dylan@email.com", password: "password")
User.create!(name: "Eric Donut", email: "eric@email.com", password: "password")
User.create!(name: "Freddy Baller", email: "freddy@email.com", password: "password")

Game.create!(home_team: "Chicago Bulls", home_score: 123, away_team: "Los Angeles Lakers", away_score: 101, date: "11/11/18")
Game.create!(home_team: "Milwaukee Bucks", home_score: 111, away_team: "Portland Trailblazers", away_score: 122, date: "11/11/18")
Game.create!(home_team: "New York knicks", home_score: 108, away_team: "Golden State Warriors", away_score: 39000, date: "11/11/18")
Game.create!(home_team: "Houston Rockets", home_score: 134, away_team: "Miami Heat", away_score: 128, date: "11/11/18")
Game.create!(home_team: "Boston Celtics", home_score: 101, away_team: "Memphis Grizzlies", away_score: 91, date: "11/11/18")

UserGame.create!(user_id: 1, game_id: 1, confidence_point: 1, users_pick: "Chicago Bulls")
UserGame.create!(user_id: 1, game_id: 2, confidence_point: 2, users_pick: "Milwaukee Bucks")
UserGame.create!(user_id: 1, game_id: 3, confidence_point: 3, users_pick: "Golden State Warriors")
UserGame.create!(user_id: 1, game_id: 4, confidence_point: 4, users_pick: "Houston Rockets")
UserGame.create!(user_id: 1, game_id: 5, confidence_point: 5, users_pick: "Boston Celtics")
UserGame.create!(user_id: 2, game_id: 1, confidence_point: 2, users_pick: "Los Angeles Lakers")
UserGame.create!(user_id: 2, game_id: 2, confidence_point: 3, users_pick: "Milwaukee Bucks")
UserGame.create!(user_id: 2, game_id: 3, confidence_point: 4, users_pick: "Golden State Warriors")
UserGame.create!(user_id: 2, game_id: 4, confidence_point: 1, users_pick: "Miami Heat")
UserGame.create!(user_id: 2, game_id: 5, confidence_point: 5, users_pick: "Boston Celtics")