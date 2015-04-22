require 'spec_helper'

describe User do
  describe "#find_led_tours_by_status" do 
    it "returns an array of tours with given status" do 
      avi = User.create
      activity = FactoryGirl.create(:activity, guide: avi)
      tour = Tour.create(status: "accepted", activity: activity)
      accepted_tours = avi.reload.find_led_tours_by_status("accepted")
      expect(accepted_tours).to include tour
    end
  end
end