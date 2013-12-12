class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
