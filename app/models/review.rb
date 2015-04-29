class Review < ActiveRecord::Base
	belongs_to :guide, :class_name => "User"
	belongs_to :reviewer, :class_name => "User"
end
