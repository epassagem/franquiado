class CreateCronogramas < ActiveRecord::Migration
  def change
    create_table :cronogramas do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
