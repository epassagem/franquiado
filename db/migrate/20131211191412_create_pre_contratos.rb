class CreatePreContratos < ActiveRecord::Migration
  def change
    create_table :pre_contratos do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
