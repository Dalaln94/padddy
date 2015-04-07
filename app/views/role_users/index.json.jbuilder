json.array!(@role_users) do |role_user|
  json.extract! role_user, :id, :role_id, :user_id
  json.url role_user_url(role_user, format: :json)
end
