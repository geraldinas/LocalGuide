class Trip < ActiveRecord::Base
  belongs_to :tourist, class_name: "User"
  belongs_to :city
  has_many :tours
  has_many :guides, through: :tours

  def requested_tour_status(status)
    container = []
    self.tours.each do |tour|
      if tour.status == status
        container << tour  
      end 
    end 
    container
  end
 
  def accepted_tours
    requested_tour_status("accepted")
  end

  def rejected_tours  
    requested_tour_status("rejected")
  end

  def pending_tours
    requested_tour_status("pending")
  end

end
