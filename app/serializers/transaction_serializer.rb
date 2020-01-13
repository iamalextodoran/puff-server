class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :amount, :type_of_t, :category, :date
  belongs_to :user
end