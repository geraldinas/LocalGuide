class Activity < ActiveRecord::Base
  belongs_to :guide, class_name: "User"
  has_many :led_tours, class_name: "Tours" 
end