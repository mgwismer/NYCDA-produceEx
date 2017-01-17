class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :PLU
      t.string :category
      t.boolean :organic

      t.timestamps
    end
  end
end
