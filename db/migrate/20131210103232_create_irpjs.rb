class CreateIrpjs < ActiveRecord::Migration
  def change
    create_table :irpjs do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
