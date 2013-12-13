class CreateUserInteressados < ActiveRecord::Migration
  def change
    create_table :user_interessados do |t|
      t.string :user_name
      t.string :user_password
      t.string :user_email

      t.timestamps
    end
  end
end
