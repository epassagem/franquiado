class CreateRedacaos < ActiveRecord::Migration
  def change
    create_table :redacaos do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
