class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.belongs_to :activity
      t.string :name
      t.timestamps null: false
    end
  end
end
