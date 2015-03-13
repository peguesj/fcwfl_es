class CreateYelpfinds < ActiveRecord::Migration
  def change
    create_table :yelpfinds do |t|

      t.timestamps null: false
    end
  end
end
