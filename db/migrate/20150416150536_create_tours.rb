class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.integer :trip_id
      t.integer :activity_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
