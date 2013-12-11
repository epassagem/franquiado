class CreateValPontos < ActiveRecord::Migration
  def change
    create_table :val_pontos do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
