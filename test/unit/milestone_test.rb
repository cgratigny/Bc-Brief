require 'test_helper'

class MilestoneTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  def test_saving
    
    milestone = Milestone.new
    milestone.completed = true
    milestone.save
    
    assert_equal(milestone.completed, true)
    
  end
  
end
