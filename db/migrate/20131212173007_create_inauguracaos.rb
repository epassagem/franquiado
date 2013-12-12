class CreateInauguracaos < ActiveRecord::Migration
  def change
    create_table :inauguracaos do |t|
      t.integer :interessado_id
      t.string :arquivo_doc
      t.date :data_start
      t.date :data_end

      t.timestamps
    end
  end
end
