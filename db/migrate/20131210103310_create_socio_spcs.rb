class CreateSocioSpcs < ActiveRecord::Migration
  def change
    create_table :socio_spcs do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
