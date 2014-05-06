class Park < ActiveRecord::Base
  has_many :park_users, foreign_key: :park_id
  has_many :users, through: :park_users
end
