class City < ActiveRecord::Base
  belongs_to :country
  has_many :residents, class_name: "User"
  has_many :trips 
  has_many :tourists, through: :trips

  def users_with_activities
    container = []
    self.residents.each do |user|
      if user.activities.count > 0
        container << user
      end
    end
    container
  end
end
