class ParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :peak, :state, :elevation, :minelevation
  has_many :users, through: :parkusers
end