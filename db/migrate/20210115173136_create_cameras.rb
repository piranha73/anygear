class CreateCameras < ActiveRecord::Migration[6.0]
  def change
    create_table :cameras do |t|
      t.string :camera_type
      t.references :mount_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
