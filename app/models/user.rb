class User < ApplicationRecord
  has_many :rooms
  has_many :reservations
end
