class CreateCarteiraProfs < ActiveRecord::Migration
  def change
    create_table :carteira_profs do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
