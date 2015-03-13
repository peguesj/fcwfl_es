class AddResultsToYelpfind < ActiveRecord::Migration
  def change
    add_column :yelpfinds, :results, :string
  end
end
