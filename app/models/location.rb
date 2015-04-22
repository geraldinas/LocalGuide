class Location < ActiveRecord::Base
  validates :address, presence: :true
  validates :name, presence: :true
  belongs_to :activity  

  after_validation :geocode, :if => :address_changed?
  
end