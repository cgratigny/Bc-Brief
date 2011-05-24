class ProjectsController < ApplicationController

  def index
    Basecamp.establish_connection!('ibethel.basecamphq.com', 'cgratigny', 'Itm,Ida4sc.',true)    
    @projects = Basecamp::Project.find(:all, params => { :status => 'active' })
  end
  
end
