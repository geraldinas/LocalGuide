class RemoveAvailabilityFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :availability, :text_field
  end
end
