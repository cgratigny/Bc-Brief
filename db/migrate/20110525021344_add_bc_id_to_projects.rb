class AddBcIdToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :bc_id, :integer
  end

  def self.down
    remove_column :projects, :bc_id
  end
end
