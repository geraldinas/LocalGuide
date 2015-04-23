class RemoveEndDateFromTrips < ActiveRecord::Migration
  def change
    remove_column :trips, :end_date, :datetime
  end
end
