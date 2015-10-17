class AddDetailToUsers < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      t.integer :career_years
      t.text :desc 
    end
  end
end
