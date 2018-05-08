class Contract < ApplicationRecord 
  
  mount_uploader :picture, PictureUploader
  belongs_to :user
  belongs_to :category
  has_many :feedbacks
end
