class CreateSocioIrpjs < ActiveRecord::Migration
  def change
    create_table :socio_irpjs do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
