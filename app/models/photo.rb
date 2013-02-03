class Photo < ActiveRecord::Base
  attr_accessible :name
  #mount_uploader :image, ImageUploader
  resourcify
end
