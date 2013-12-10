json.array!(@irpfs) do |irpf|
  json.extract! irpf, :id, :interessado_id, :arquivo
  json.url irpf_url(irpf, format: :json)
end
