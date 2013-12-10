json.array!(@serasas) do |serasa|
  json.extract! serasa, :id, :interessado_id, :arquivo
  json.url serasa_url(serasa, format: :json)
end
