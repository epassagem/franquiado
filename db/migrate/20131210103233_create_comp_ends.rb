class CreateCompEnds < ActiveRecord::Migration
  def change
    create_table :comp_ends do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
