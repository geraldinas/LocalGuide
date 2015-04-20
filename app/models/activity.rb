class Activity < ActiveRecord::Base
  belongs_to :guide, class_name: "User"
  has_many :led_tours, class_name: "Tour" 
  validates :name, presence: true
  validates :description, presence: true
end
