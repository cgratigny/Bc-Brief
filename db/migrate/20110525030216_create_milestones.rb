class CreateMilestones < ActiveRecord::Migration
  def self.up
    create_table :milestones do |t|
      t.string :completed
      t.string :title
      t.timestamp :deadline
      t.string :responsible_party_name

      t.timestamps
    end
  end

  def self.down
    drop_table :milestones
  end
end
