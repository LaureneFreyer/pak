class AddCookiesAcceptedToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :cookies_accepted, :boolean
  end
end
