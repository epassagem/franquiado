class CreateSocioCompEnds < ActiveRecord::Migration
  def change
    create_table :socio_comp_ends do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
