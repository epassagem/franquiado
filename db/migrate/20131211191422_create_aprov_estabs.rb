class CreateAprovEstabs < ActiveRecord::Migration
  def change
    create_table :aprov_estabs do |t|
      t.integer :interessado_id
      t.string :arquivo_doc

      t.timestamps
    end
  end
end
