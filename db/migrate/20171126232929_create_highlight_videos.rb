class CreateHighlightVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :highlight_videos do |t|
      t.string :title
      t.text :url

      t.timestamps
    end
  end
end
