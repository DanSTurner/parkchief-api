class ParksUsers < ActiveRecord::Base
  belongs_to :parks
  belongs_to :users
end
