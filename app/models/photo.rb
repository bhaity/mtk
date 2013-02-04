class Photo < ActiveRecord::Base
  attr_accessible :name, :image, :is_private
  mount_uploader :image, ImageUploader
  resourcify
  scope :not_private
  scope :visible, lambda{|visible=true| where("is_private = ?", !visible)}
end
