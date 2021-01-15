class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :product_types, array: true
      t.string :name

      t.timestamps
    end
  end
end
