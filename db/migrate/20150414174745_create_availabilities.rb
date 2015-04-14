class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.date :start
      t.date :end
      t.timestamps null: false
    end
  end
end
