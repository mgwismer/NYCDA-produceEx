class CreateBuyerproducts < ActiveRecord::Migration[5.0]
  def change
    create_table :buyerproducts do |t|
      t.references :buyer, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
