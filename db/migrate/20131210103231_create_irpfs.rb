class CreateIrpfs < ActiveRecord::Migration
  def change
    create_table :irpfs do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
