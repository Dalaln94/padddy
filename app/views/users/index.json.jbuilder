json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :address, :password_digest, :payment_Method
  json.url user_url(user, format: :json)
end
