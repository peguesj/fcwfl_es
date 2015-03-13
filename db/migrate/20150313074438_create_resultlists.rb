class CreateResultlists < ActiveRecord::Migration
  def change
    create_table :resultlists do |t|
      t.string :title
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.float :rating
      t.float :reviews
      t.string :url
      t.string :image

      t.timestamps null: false
    end
  end
end
