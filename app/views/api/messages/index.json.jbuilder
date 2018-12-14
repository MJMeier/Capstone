json.array! @messages.each do |message|
  json.id message.id
  json.type "text"
  json.author message.user_id.to_i == current_user.id ? "me" : message.user_id
  # json.message_user_id message.user_id
  # json.current_user_id current_user.id
  json.data do
    json.text message.message
  end
end