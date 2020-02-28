class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :introduction
      t.integer :price
      t.string :image_id
      t.integer :relese_date

      t.timestamps
    end
  end
end
