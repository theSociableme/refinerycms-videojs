class AddDescriptionToVideosVideos < ActiveRecord::Migration
  def change
    add_column :refinery_videos, :description, :text
  end
end
