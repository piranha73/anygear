class CreateLights < ActiveRecord::Migration[6.0]
  def change
    create_table :lights do |t|
      t.references :light_brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
