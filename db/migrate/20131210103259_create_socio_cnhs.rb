class CreateSocioCnhs < ActiveRecord::Migration
  def change
    create_table :socio_cnhs do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
