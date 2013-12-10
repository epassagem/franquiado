class CreateProjArquitetonicos < ActiveRecord::Migration
  def change
    create_table :proj_arquitetonicos do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
