class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.integer  :guide_id
    	t.integer  :reviewer_id
<<<<<<< HEAD
    	t.text     :review 
=======
    	t.text     :content
>>>>>>> review
      t.timestamps null: false
    end
  end
end
