class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brewer
      t.string :style
      t.decimal :abv

      t.timestamps
    end
  end
end
