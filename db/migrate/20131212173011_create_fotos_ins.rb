class CreateFotosIns < ActiveRecord::Migration
  def change
    create_table :fotos_ins do |t|
      t.integer :inauguracao_id
      t.string :foto

      t.timestamps
    end
  end
end
