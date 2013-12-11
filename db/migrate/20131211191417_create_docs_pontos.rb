class CreateDocsPontos < ActiveRecord::Migration
  def change
    create_table :docs_pontos do |t|
      t.integer :interessado_id
      t.string :arquivo
      t.string :nome

      t.timestamps
    end
  end
end
