class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :anonymous_username, :string
  end
end
