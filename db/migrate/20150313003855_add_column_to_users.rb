class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :currentLat, :integer
    add_column :users, :currentLong, :integer
  end
end
