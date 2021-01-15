class CreateMountTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :mount_types do |t|
      t.references :camera_lense_brand, null: false, foreign_key: true
      t.string :code

      t.timestamps
    end
  end
end
