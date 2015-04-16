class AddNicknameAndImageUrlAndDescriptionAndLocationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nickname, :string
    add_column :users, :image_url, :string
    add_column :users, :description, :string
    add_column :users, :city_id, :integer
  end
end
