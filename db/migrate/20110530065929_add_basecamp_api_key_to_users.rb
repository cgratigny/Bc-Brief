class AddBasecampApiKeyToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :basecamp_url, :string
    add_column :users, :basecamp_api_key, :string
  end

  def self.down
    remove_column :users, :basecamp_api_key
    remove_column :users, :basecamp_url
  end
end
