class Country < ActiveRecord::Base
  has_many :cities
  has_many :residents, through: :cities
end
