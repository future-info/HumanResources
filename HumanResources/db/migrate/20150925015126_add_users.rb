class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :phone_number
      t.string :password
      t.integer :career
      t.timestamps
    end

    add_index :users, :user_name
    add_index :users, :phone_number
  end
end
