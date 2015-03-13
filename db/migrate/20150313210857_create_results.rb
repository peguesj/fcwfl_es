class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :name
      t.integer :rating
      t.string :address
      t.string :city
      t.string :zip
      t.integer :tel

      t.timestamps null: false
    end
  end
end
