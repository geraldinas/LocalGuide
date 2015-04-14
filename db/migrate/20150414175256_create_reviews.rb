class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :rating
      t.integer :tourist_id
      t.integer :guest_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps null: false
    end
  end
end
