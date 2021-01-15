class CreateStabilizers < ActiveRecord::Migration[6.0]
  def change
    create_table :stabilizers do |t|

      t.timestamps
    end
  end
end
