class CreateObservs < ActiveRecord::Migration
  def change
    create_table :observs do |t|
      t.integer :interessado_id
      t.string :observacao

      t.timestamps
    end
  end
end
