class CreateCofs < ActiveRecord::Migration
  def change
    create_table :cofs do |t|
      t.integer :interessado_id
      t.date :data_fim
      t.boolean :estatus
      t.string :arquivo

      t.timestamps
    end
  end
end
