class RemoveUpdates < ActiveRecord::Migration
  def self.up
  end

  def self.down
    remove_table :updates
  end
end
