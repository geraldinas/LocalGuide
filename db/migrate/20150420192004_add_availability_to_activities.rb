class AddAvailabilityToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :availability, :text, default: "please contact guide"  
  end
end
