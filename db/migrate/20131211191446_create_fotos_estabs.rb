class CreateFotosEstabs < ActiveRecord::Migration
  def change
    create_table :fotos_estabs do |t|
      t.integer :aprov_estab_id
      t.string :foto

      t.timestamps
    end
  end
end
