class CreateCpfs < ActiveRecord::Migration
  def change
    create_table :cpfs do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
