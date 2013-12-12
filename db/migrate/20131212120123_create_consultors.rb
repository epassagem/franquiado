class CreateConsultors < ActiveRecord::Migration
  def change
    create_table :consultors do |t|
      t.integer :interessado_id
      t.string :arquivo
      t.date :data_fim
      t.boolean :verificador

      t.timestamps
    end
  end
end
