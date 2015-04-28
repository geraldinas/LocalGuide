class Availability < ActiveRecord::Base 
  validates :start_time, presence: true
  validates :end_time, presence: true
  belongs_to :guide, class_name: "User"
  belongs_to :day
end
