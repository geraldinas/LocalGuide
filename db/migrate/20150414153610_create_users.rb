class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps null: false
      t.string :provider
      t.string :uid
      t.string :email
    end
  end
end
