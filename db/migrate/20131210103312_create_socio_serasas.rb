class CreateSocioSerasas < ActiveRecord::Migration
  def change
    create_table :socio_serasas do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
