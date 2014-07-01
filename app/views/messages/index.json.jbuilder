json.array!(@messages) do |message|
  json.extract! message, :id, :message, :read, :previous_message_id, :next_message_id, :user_id, :from_user_id
  json.url message_url(message, format: :json)
end
