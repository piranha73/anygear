class CreateTripodBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :tripod_brands do |t|
      t.string :name

      t.timestamps
    end
  end
end
