class City < ActiveRecord::Base
  belongs_to :country
  has_many :residents, class_name: "User"
  has_many :trips 
  has_many :tourists, through: :trips
end
