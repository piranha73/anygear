class CreateCameras < ActiveRecord::Migration[6.0]
  def change
    create_table :cameras do |t|
      t.references :camera_type, null: false, foreign_key: true
      t.references :camera_lense_brand, null: false, foreign_key: true
      t.string :mount_type_references

      t.timestamps
    end
  end
end
