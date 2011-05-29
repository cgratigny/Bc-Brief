class Milestone < ActiveRecord::Base
  belongs_to :project
  
  def self.presets
    milestone_presets = ["All Information is Collected", "Graphics Are Completed", "Editing Finishes Media", "Product Created on P.O.S.", "Launch Banners/Marketing", "Product Launched on Webstore"]
  end
  
end
