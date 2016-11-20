class Picture < ActiveRecord::Base
  validates :title, presence: true
  validates :image, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
end
