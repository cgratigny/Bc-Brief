class CreateCacheUpdates < ActiveRecord::Migration
  def self.up
    create_table :cache_updates do |t|
      t.string :username
      t.timestamp :updated

      t.timestamps
    end
  end

  def self.down
    drop_table :cache_updates
  end
end
