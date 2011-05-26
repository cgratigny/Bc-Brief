require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  def test_update_cache
    project = Project.new
    project.update_cache('ibethel.basecamphq.com', 'cgratigny', 'Itm,Ida4sc.')
  end
end
