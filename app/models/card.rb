class Card < ApplicationRecord
  validates :name, presence: true
  mount_uploader :image, ImageUploader
end
