class CreateAprovProjs < ActiveRecord::Migration
  def change
    create_table :aprov_projs do |t|
      t.integer :interessado_id
      t.string :arquivo_doc

      t.timestamps
    end
  end
end
