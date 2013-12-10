class CreateSocioCarteiraProfs < ActiveRecord::Migration
  def change
    create_table :socio_carteira_profs do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
