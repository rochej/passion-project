class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :goldstars
  has_many :chores,git  through: :goldstars
end
