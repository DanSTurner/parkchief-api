class ParksUser < ActiveRecord::Base
  belongs_to :parks
  belongs_to :users
end
