class Activity < ActiveRecord::Base
   belongs_to :tourist, :class_name => "User"
   belongs_to :guide, :class_name => "User"
end
