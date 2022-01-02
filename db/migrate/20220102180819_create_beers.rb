class CreateBeers < ActiveRecord::Migration[7.0]
  def change
    create_table :beers do |t|
      t.string :title
      t.text :description
      t.date :creation

      t.timestamps
    end
  end
end
