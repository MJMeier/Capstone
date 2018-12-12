json.array! @users.each do |user|
  json.name user.name
  json.total_points user.total_points
end