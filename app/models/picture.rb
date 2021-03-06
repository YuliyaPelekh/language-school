class Picture < ActiveRecord::Base
  validates :album, presence: true
  
  mount_uploader :image, ImageUploader
  belongs_to :album
end
