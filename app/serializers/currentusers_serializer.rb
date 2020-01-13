class CurrentuserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :picture, :dark_mode, :selected_at
end