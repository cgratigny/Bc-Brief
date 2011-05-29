class AddSortOrderToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :sort_order, :integer
  end

  def self.down
    remove_column :projects, :sort_order
  end
end
