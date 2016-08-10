class Restaurant < ApplicationRecord

  validates :name, presence: true
  validates :address, presence: true
  validates :stars, inclusion: { in: [1..3], allow_nil: false }

end
