class Contract < ApplicationRecord 
  
  mount_uploader :picture, PictureUploader
  belongs_to :user
  belongs_to :category

end
