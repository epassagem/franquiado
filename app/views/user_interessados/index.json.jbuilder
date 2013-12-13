json.array!(@user_interessados) do |user_interessado|
  json.extract! user_interessado, :id, :user_name, :user_password, :user_email
  json.url user_interessado_url(user_interessado, format: :json)
end
