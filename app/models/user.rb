class User < ActiveRecord::Base
  has_many :park_users, foreign_key: :user_id
  has_many :parks, through: :park_users
end
