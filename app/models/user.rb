class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

validates_presence_of :bio, :username
has_many :videos, dependent: :destroy
has_many :comments, dependent: :destroy


end
