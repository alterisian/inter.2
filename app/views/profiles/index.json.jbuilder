json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :height, :age, :gender
  json.url profile_url(profile, format: :json)
end
