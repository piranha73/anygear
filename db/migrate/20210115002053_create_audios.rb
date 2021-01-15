class CreateAudios < ActiveRecord::Migration[6.0]
  def change
    create_table :audios do |t|
      t.references :audio_brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
