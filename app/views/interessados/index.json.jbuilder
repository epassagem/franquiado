json.array!(@interessados) do |interessado|
  json.extract! interessado, :id, :interessado_nome, :interessado_cpf, :interessado_rg, :interessado_data_nasc, :interessado_estado_civil, :interessado_regime_bens, :interessado_renda, :interessado_sera_admin, :interessado_dispon_integral, :interessado_quem_sera_admin, :interessado_resumo_prof, :interessado_manifesto_pos, :interessado_email, :interessado_banco, :interessado_agencia, :interessado_cc, :interessado_gerente, :interessado_fone_banco
  json.url interessado_url(interessado, format: :json)
end
