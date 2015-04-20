class Trip < ActiveRecord::Base
  belongs_to :tourist, class_name: "User"
  belongs_to :city
  has_many :tours
  has_many :guides, through: :tours
  validates :city_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
