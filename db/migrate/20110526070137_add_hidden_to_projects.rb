class AddHiddenToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :hidden, :bool
  end

  def self.down
    remove_column :projects, :hidden
  end
end
