class Review < ApplicationRecord
  PERMITTED_REVIEW = ["0", "1", "2", "3", "4", "5"]
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0 }
  validates :rating, numericality: { less_than_or_equal_to: 5 }
end
