class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_many :reviews

  def review
    reviews.first
  end
end
