json.array!(@carts) do |cart|
  json.extract! cart, :id, :interessado_id, :arquivo
  json.url cart_url(cart, format: :json)
end
