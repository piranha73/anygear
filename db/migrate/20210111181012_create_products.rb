class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :technical_informations
      t.float :price_per_day
      t.string :cover_picture
      t.string :ship_from_address
      t.float :weight
      t.references :category, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
