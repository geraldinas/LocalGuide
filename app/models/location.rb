class Location < ActiveRecord::Base
  validates :address, presence: :true
  validates :name, presence: :true
  belongs_to :activity 


end