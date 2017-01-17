class CreateMarkets < ActiveRecord::Migration[5.0]
  def change
    create_table :markets do |t|
      t.references :seller, foreign_key: true
      t.references :product, foreign_key: true
      t.text :description
      t.string :price
      t.string :price_description
      t.string :harvest_date
      t.string :harvest_location

      t.timestamps
    end
  end
end
