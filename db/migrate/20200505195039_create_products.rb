class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.integer :stock
      t.belongs_to :category
      t.belongs_to :brand

      t.timestamps
    end
  end
end
