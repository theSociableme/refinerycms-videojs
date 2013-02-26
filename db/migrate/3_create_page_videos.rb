class CreatePageVideos < ActiveRecord::Migration
  def change
    create_table Refinery::Videos::VideoPage.table_name, :id => false do |t|
      t.integer :video_id
      t.integer :page_id
      t.integer :position
      t.string :page_type, :default => "page"
    end

    add_index Refinery::Videos::VideoPage.table_name, :video_id
    add_index Refinery::Videos::VideoPage.table_name, :page_id
  end
end
