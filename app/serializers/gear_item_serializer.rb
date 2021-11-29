class GearItemSerializer < ActiveModel::Serializer
  attributes :id, :category, :image, :description, :weightpacked, :quantity
end
