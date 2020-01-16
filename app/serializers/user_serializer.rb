class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :picture, :dark_mode, :selected_at, :danger
  has_many :transactions
end