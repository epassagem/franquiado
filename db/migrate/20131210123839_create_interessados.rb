class CreateInteressados < ActiveRecord::Migration
  def change
    create_table :interessados do |t|
      t.string :interessado_nome
      t.string :interessado_cpf
      t.string :interessado_rg
      t.string :interessado_data_nasc
      t.string :interessado_estado_civil
      t.string :interessado_regime_bens
      t.string :interessado_renda
      t.string :interessado_sera_admin
      t.string :interessado_dispon_integral
      t.string :interessado_quem_sera_admin
      t.string :interessado_resumo_prof
      t.string :interessado_manifesto_pos
      t.string :interessado_email
      t.string :interessado_banco
      t.string :interessado_agencia
      t.string :interessado_cc
      t.string :interessado_gerente
      t.string :interessado_fone_banco

      t.timestamps
    end
  end
end
