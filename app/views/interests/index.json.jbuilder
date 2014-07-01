json.array!(@interests) do |interest|
  json.extract! interest, :id, :value
  json.url interest_url(interest, format: :json)
end
