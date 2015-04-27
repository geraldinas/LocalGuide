class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.belongs_to :user
      t.text :description
      t.timestamps null: false
    end
  end
end
