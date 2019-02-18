class BuildingSerializer < ActiveModel::Serializer
  attributes :id, :building_class, :street, :house_number, :floors
end