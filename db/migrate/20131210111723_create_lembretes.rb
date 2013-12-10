class CreateLembretes < ActiveRecord::Migration
  def change
    create_table :lembretes do |t|
      t.integer :interessado_id
      t.string :observacao
      t.string :nome
      t.date :data_max

      t.timestamps
    end
  end
end
