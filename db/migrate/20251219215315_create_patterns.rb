class CreatePatterns < ActiveRecord::Migration[8.0]
  def change
    create_table :patterns do |t|
      t.string :title
      t.string :designer_name
      t.string :tutorial_video_url
      t.text :gauge
      t.text :copyright

      t.timestamps
    end
  end
end
