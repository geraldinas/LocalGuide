class RemoveStartDateFromTrips < ActiveRecord::Migration
  def change
    remove_column :trips, :start_date, :datetime
  end
end
