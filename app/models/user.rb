class User < ActiveRecord::Base
  belongs_to :city
  has_many :availabilities, foreign_key: "guide_id"
  has_many :activities, foreign_key: "guide_id"
  has_many :led_tours, through: :activities
  has_many :trips, foreign_key: "tourist_id"
  has_many :tours, through: :trips
  has_many :tourist_activities, through: :tours, :source => :activity
  has_many :guides, through: :tourist_activities
  has_many :notifications
  mount_uploader :avatar, AvatarUploader
  delegate :country, to: :city 
  has_reputation :votes, 
        source: :user, aggregated_by: :sum

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

  # def self.by_votes
  #   select('users.*, coalesce(value, 0) as votes').
  #   joins('left join user_votes on user_id=user.id').
  #   order('votes desc')
  # end

  def voted_for(user)
    evaluations.where(target_type: user.class, target_id: users.id).present?
  end

  def accepted_led_tours
    find_led_tours_by_status("accepted")
  end

  def rejected_led_tours
    find_led_tours_by_status("rejected")
  end

  def pending_led_tours
    find_led_tours_by_status("pending")
  end

  def find_led_tours_by_status(status)
    container = []
    self.led_tours.each do |tour|
      if tour.status == status
        container << tour 
      end
    end
     container
  end
end
