class Country < ActiveRecord::Base
  has_many :cities
  has many :users, :through => :city
  has_many :activities, :through => :users
end

