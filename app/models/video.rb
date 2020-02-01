class Video < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates_presence_of :video_title, :video_content
end
