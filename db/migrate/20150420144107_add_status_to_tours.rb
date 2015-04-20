class AddStatusToTours < ActiveRecord::Migration
  def change
    add_column :tours, :status, :string, default: "pending"  
  end
end
