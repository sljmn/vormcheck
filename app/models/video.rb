class Video < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates_presence_of :video_title, :thumbnail


  has_one_attached :thumbnail, dependent: :destroy
end
