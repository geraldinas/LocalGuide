class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :tourist_id
      t.integer :city_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
