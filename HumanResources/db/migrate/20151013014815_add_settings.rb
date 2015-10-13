class AddSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :name
      t.integer :key
      t.string :value
    end
    add_index :settings, :name
  end
end
