json.array!(@comp_ends) do |comp_end|
  json.extract! comp_end, :id, :interessado_id, :arquivo
  json.url comp_end_url(comp_end, format: :json)
end
