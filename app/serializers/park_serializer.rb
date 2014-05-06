class ParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :peak, :state, :elevation, :minelevation
end