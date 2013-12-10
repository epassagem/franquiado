class CreateDocFiscaisCorings < ActiveRecord::Migration
  def change
    create_table :doc_fiscais_corings do |t|
      t.integer :interessado_id
      t.string :arquivo
      t.string :nome

      t.timestamps
    end
  end
end
