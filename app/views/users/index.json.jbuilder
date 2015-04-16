json.array!(@users) do |user|
  json.extract! user, :id, :email, :name, :status, :role, :image_url
  json.url user_url(user, format: :json)
end
