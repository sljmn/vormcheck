class RemoveVideoContentFromVideos < ActiveRecord::Migration[6.0]
  def change

    remove_column :videos, :video_content, :string
  end
end
