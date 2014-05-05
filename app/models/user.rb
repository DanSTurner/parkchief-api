class User < ActiveRecord::Base
  has_many :parks_users
  has_many :parks, through: :parks_users
end
