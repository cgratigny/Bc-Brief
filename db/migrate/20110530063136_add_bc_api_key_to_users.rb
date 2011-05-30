class AddBcApiKeyToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :bc_api_key, :string
    add_column :users, :bc_url, :string
  end

  def self.down
    remove_column :users, :bc_api_key
    remove_column :users, :bc_url
  end
end
