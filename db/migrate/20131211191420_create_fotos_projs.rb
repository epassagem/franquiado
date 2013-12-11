class CreateFotosProjs < ActiveRecord::Migration
  def change
    create_table :fotos_projs do |t|
      t.integer :aprov_proj_id
      t.string :foto

      t.timestamps
    end
  end
end
