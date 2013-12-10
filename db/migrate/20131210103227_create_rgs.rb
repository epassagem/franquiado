class CreateRgs < ActiveRecord::Migration
  def change
    create_table :rgs do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
