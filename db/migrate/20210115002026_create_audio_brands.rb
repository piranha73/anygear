class CreateAudioBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :audio_brands do |t|
      t.string :name

      t.timestamps
    end
  end
end
