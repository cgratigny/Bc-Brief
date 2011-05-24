class ProjectsController < ApplicationController

  def index
    Basecamp.establish_connection!('ibethel.basecamphq.com', 'cgratigny', 'Itm,Ida4sc.',true)

    projects = Array.new

    Basecamp::Project.find(:all).each do |project|
      if project.status == 'active' 
        if project.company.name == 'Affiliate Teaching Series Projects'
          projects << project
        end
      end
    end
    
    @projects = projects
    
  end
  
end
