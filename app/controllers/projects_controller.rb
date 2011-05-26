class ProjectsController < ApplicationController

  def index

    project = Project.new
    project.update_cache('ibethel.basecamphq.com', 'cgratigny', 'Itm,Ida4sc.')
                
    @projects = Project.joins(:company).where(" status = ? AND companies.name = ?","active","Affiliate Teaching Series Projects")
    @milestone_presets = ["All Information is Collected", "Graphics Are Completed", "Editing Finishes Media", "Product Created on P.O.S.", "Launch Banners/Marketing", "Product Launched on Webstore"]
    
  end
  
end
