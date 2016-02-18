class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :goldstars
  has_many :chores,  through: :goldstars
end
