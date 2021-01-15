class CreateLenses < ActiveRecord::Migration[6.0]
  def change
    create_table :lenses do |t|
      t.references :mount_type, null: false, foreign_key: true
      t.string :lens_type
      t.integer :min_focal_length
      t.integer :max_focal_length
      t.float :max_aperture

      t.timestamps
    end
  end
end
