class CreateCameraLenseBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :camera_lense_brands do |t|
      t.string :name

      t.timestamps
    end
  end
end
