class CreateTripods < ActiveRecord::Migration[6.0]
  def change
    create_table :tripods do |t|

      t.timestamps
    end
  end
end
