class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :current_guide, default: nil
      t.timestamps null: false
      t.string :provider
      t.string :uid
    end
  end
end
