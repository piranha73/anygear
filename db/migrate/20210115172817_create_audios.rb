class CreateAudios < ActiveRecord::Migration[6.0]
  def change
    create_table :audios do |t|

      t.timestamps
    end
  end
end
