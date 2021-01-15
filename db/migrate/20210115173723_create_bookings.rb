class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.string :ship_to_address
      t.float :total_price

      t.timestamps
    end
  end
end
