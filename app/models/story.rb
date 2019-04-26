class Story < ApplicationRecord
  validates :name, presence: true
  validates :theme, presence: true
end
