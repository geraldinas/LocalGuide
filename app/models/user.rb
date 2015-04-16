class User < ActiveRecord::Base
  belongs_to :city
  has_many :activities, foreign_key: "guide_id"
  has_many :led_tours, through: :activities
  has_many :trips, foreign_key: "tourist_id"
  has_many :tours, through: :trips
  has_many :activities, through: :tours
  has_many :guides, through: :activities
  delegate :country, to: :city 

  def self.added_email_and_city?(params)
    return false if params[:email].length < 4
    return false if params[:city_id].length < 1
    true
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.nickname = auth["info"]["nickname"] 
      user.image_url = auth["info"]["image"]
      user.description = auth["info"]["description"]
    end
  end  
end
