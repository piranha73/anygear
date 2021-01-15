class CreateLightBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :light_brands do |t|
      t.string :name

      t.timestamps
    end
  end
end
