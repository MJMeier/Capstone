json.id @message.id
json.type "text"
json.author @message.user_id == current_user.id ? "me" : @message.user_id
json.data do
  json.text @message.message
end