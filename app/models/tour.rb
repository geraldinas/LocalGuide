class Tour < ActiveRecord::Base
  belongs_to :trip
  belongs_to :activity
  delegate :guide, to: :activity
end
