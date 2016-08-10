class Review < ApplicationRecord

  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: [0,1,2,3,4,5], allow_nil: false }

  belongs_to :restaurant, dependent: :destroy
end
