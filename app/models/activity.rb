class Activity < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  belongs_to :guide, class_name: "User"
  has_many :led_tours, class_name: "Tour"
  has_many :locations
  accepts_nested_attributes_for :locations
end
