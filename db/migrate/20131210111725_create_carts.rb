class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
