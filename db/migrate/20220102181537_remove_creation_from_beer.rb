class RemoveCreationFromBeer < ActiveRecord::Migration[7.0]
  def change
    remove_column :beers, :creation, :date
  end
end
