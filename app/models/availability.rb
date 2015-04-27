class Availability < ActiveRecord::Base
  belongs_to :guide, class_name: "User"
  belongs_to :day
end
