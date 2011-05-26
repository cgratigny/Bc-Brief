class RemoveOverviewFromProject < ActiveRecord::Migration
    def self.up
      add_column :projects, :announcement, :text
    end

    def self.down
      remove_column :projects, :overview
    end
  end
