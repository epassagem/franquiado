json.array!(@cpfs) do |cpf|
  json.extract! cpf, :id, :interessado_id, :arquivo
  json.url cpf_url(cpf, format: :json)
end
