class CreateTripods < ActiveRecord::Migration[6.0]
  def change
    create_table :tripods do |t|
      t.references :tripod_brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
