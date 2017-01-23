class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :buyer, foreign_key: true
      t.references :seller, foreign_key: true
      t.text :comment
      t.integer :rating

      t.timestamps
    end
  end
end
