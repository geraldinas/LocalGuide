class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :guide_id
      t.timestamps null: false
    end
  end
end
