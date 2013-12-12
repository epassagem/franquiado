class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.integer :interessado_id
      t.string :arquivo
      t.string :nome

      t.timestamps
    end
  end
end
