class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :activity_id
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.timestamps null: false
    end
  end
end
