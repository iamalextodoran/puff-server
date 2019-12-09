class Transaction < ApplicationRecord
  belongs_to :user
  scope :as_income, -> { where("type_of_t = income") }
  scope :as_expense, -> { where("type_of_t = expense") }
end
