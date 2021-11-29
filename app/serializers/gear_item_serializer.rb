class GearItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :image, :description, :weight, :packed, :quantity
end
