class Wallet < ApplicationRecord
  validates :expense, presence: true, length: { maximum: 50, minimum: 3 }
  validates :amount, presence: true

  has_many :categories
end
