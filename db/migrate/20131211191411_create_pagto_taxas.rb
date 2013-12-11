class CreatePagtoTaxas < ActiveRecord::Migration
  def change
    create_table :pagto_taxas do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
