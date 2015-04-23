class Availability < ActiveRecord::Base
  belongs_to :guide, class_name: "User"

  def new

  end 
end
