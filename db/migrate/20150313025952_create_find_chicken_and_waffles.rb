class CreateFindChickenAndWaffles < ActiveRecord::Migration
  def change
    create_table :find_chicken_and_waffles do |t|

      t.timestamps null: false
    end
  end
end
