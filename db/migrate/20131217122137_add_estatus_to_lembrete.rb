class AddEstatusToLembrete < ActiveRecord::Migration
  def change
    add_column :lembretes, :estatus, :boolean, :null => false
  end
end
