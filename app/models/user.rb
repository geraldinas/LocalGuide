class User < ActiveRecord::Base
  belongs_to :city
  has_many :activities, foreign_key: "guide_id"
  has_many :led_tours, through: :activities
  has_many :trips, foreign_key: "tourist_id"
  has_many :tours, through: :trips
  has_many :activities, through: :tours
  has_many :guides, through: :activities
  delegate :country, to: :city

  

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.nickname = auth["info"]["nickname"]
      user.location = auth["info"]["location"]
      user.image_url = auth["info"]["image"]
      user.description = auth["info"]["description"]
      # user.token = auth["credentials"]["token"]
      # user.secret = auth["credentials"]["secret"]
    end
  end

  def self.info(input)

  end
    
end
