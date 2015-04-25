class AddPhoneToUsers < ActiveRecord::Migration
  def up
    add_column :users, :phone, :string
    add_column :users, :role, :integer
  end

  def down
    remove_column :users, :phone
    remove_column :users, :role
  end
end
