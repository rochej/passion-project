class Chore < ActiveRecord::Base
  # Remember to create a migration!
  has_many :goldstars
  has_many :users, through: :goldstars
end
