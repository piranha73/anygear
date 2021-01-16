class CreateLightings < ActiveRecord::Migration[6.0]
  def change
    create_table :lightings do |t|

      t.timestamps
    end
  end
end
