class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.array :product_types
      t.string :name

      t.timestamps
    end
  end
end
