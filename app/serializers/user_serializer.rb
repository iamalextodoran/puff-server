class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :picture, :dark_mode
  has_many :transactions
end
