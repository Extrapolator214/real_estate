class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :country, null: false
      t.string :region
      t.string :city, null:false
      t.string :address
      t.integer :offer, null: false
      t.integer :user_id, null: false
      t.float :longitude
      t.float :latitude
      t.text :description, null: false
      t.decimal :price, precision: 63, scale: 2 # max for MySql
      t.integer :price_period

      t.timestamps null: false
    end
  end
end
