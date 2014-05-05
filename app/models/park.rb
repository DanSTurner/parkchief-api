class Park < ActiveRecord::Base
  has_many :parks_users
  has_many :users, through: :parks_users
end
