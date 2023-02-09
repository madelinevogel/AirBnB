class Review < ApplicationRecord
  belongs_to :reservation, optional: true
end
