class User < ActiveRecord::Base
  has_many :activities
  has_many :ratings
  has_many :cities
  has_many :availabilities
end
