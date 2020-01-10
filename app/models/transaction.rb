class Transaction < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :amount, presence: true
  validates :category, presence: true
end
