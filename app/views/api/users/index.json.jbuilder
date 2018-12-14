json.array! @users.each do |user|
  json.id user.id.to_s
  json.name user.name
  json.imageUrl "https://avatars3.githubusercontent.com/u/1915989?s=230&v=4"
  json.total_points user.total_points
end