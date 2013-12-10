class CreateSocioCpfs < ActiveRecord::Migration
  def change
    create_table :socio_cpfs do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
