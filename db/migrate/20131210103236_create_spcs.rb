class CreateSpcs < ActiveRecord::Migration
  def change
    create_table :spcs do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
