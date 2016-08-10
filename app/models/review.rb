class Review < ApplicationRecord

  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, inclusion: { in: [0..5], allow_nil: false }

  belongs_to :restaurant, dependent: :destroy
end
