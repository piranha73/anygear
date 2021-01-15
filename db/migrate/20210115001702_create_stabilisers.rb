class CreateStabilisers < ActiveRecord::Migration[6.0]
  def change
    create_table :stabilisers do |t|
      t.references :stabiliser_brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
