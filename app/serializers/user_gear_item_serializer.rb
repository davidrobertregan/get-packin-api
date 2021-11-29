class UserGearItemSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :gear_item
end
