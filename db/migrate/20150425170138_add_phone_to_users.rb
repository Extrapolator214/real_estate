class AddPhoneToUsers < ActiveRecord::Migration
  def up
    add_column :users, :phone, :string
    add_column :users, :role, :integer
    add_column :users, :api_token, :string
  end

  def down
    remove_column :users, :phone
    remove_column :users, :role
    remove_column :users, :api_token
  end
end
