class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.time :start_time
      t.time :end_time
      t.integer :guide_id
      t.timestamps null: false
    end
  end
end
