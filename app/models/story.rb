class Story < ApplicationRecord
  validates :name, presence: true
  validates :theme, presence: true

  has_many :narrations
  has_many :users, through: :narrations
end
