class AddPosterUrlToVideosVideos < ActiveRecord::Migration
  def change
    add_column :refinery_videos, :poster_url, :string
  end
end
