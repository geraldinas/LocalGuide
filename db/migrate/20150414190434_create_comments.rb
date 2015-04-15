class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.integer :review_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end