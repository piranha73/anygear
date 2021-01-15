class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :user, null: false, foreign_key: true
      t.references :productable, polymorphic: true, null: false
      t.references :brand, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.float :price_per_day
      t.string :ship_from_address

      t.timestamps
    end
  end
end
