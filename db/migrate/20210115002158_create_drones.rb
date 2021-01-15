class CreateDrones < ActiveRecord::Migration[6.0]
  def change
    create_table :drones do |t|
      t.references :drone_brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
