class Transaction < ApplicationRecord
  belongs_to :user
  scope :by_type, -> (type_of_t) { where("type_of_t = ?", type_of_t) }
end
