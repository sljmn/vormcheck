class Video < ApplicationRecord
  belongs_to :user

  validates_presence_of :video_title, :video_content
end
