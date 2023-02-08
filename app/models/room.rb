class Room < ApplicationRecord
  has_many :room_images
  has_many :reservations
  belongs_to :user
end
