class AddDayIdToAvailabilities < ActiveRecord::Migration
  def change
    add_column :availabilities, :day_id, :integer
  end
end
