class AddCurrencyToAd < ActiveRecord::Migration
  def up
    add_column :ads, :currency, :string
  end

  def down
    remove_column :ads, :currency
  end
end
