class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :picture
  has_many :transactions
end
