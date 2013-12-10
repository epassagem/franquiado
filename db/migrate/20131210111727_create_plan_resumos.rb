class CreatePlanResumos < ActiveRecord::Migration
  def change
    create_table :plan_resumos do |t|
      t.integer :interessado_id
      t.string :arquivo

      t.timestamps
    end
  end
end
