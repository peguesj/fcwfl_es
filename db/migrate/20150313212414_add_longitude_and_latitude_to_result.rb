class AddLongitudeAndLatitudeToResult < ActiveRecord::Migration
  def change
    add_column :results, :longitude, :float
    add_column :results, :latitude, :float
  end
end
