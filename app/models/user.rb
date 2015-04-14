class User < ActiveRecord::Base
  has_many :activities
  has_many :ratings
  has_many :cities
  has_many :availabilities


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
    
end
