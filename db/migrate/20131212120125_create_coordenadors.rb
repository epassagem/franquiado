class CreateCoordenadors < ActiveRecord::Migration
  def change
    create_table :coordenadors do |t|
      t.integer :interessado_id
      t.string :arquivo
      t.date :data_fim
      t.boolean :verificador

      t.timestamps
    end
  end
end
