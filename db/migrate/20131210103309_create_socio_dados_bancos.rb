class CreateSocioDadosBancos < ActiveRecord::Migration
  def change
    create_table :socio_dados_bancos do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
