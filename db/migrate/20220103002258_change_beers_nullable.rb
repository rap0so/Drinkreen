class ChangeBeersNullable < ActiveRecord::Migration[7.0]
  def change
    change_column :beers, :title, :string, null: false
    change_column :beers, :description, :text, null: false
  end
end
