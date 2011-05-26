class Project < ActiveRecord::Base
  has_one :company
  has_many :milestones
  
  def media_milestones
    
    presets = ["All Information is Collected", "Graphics Are Completed", "Editing Finishes Media", "Product Created on P.O.S.", "Launch Banners/Marketing", "Product Launched on Webstore"]
    
    filtered_milestones = Array.new
    
    presets.each do |preset|
      filtered_milestones << Milestone.find_or_initialize_by_project_id_and_title(id,preset)
    end
    
    return filtered_milestones
    
  end
  

  def update_cache(url,username,password)

    cache = CacheUpdate.find_or_initialize_by_username(username)
    if cache.is_current
        return
    else
      cache.updated = Time.now
      cache.save
    end
    
    # connect to basecamp and find all of the projects
    Basecamp.establish_connection!(url,username,password,true)
    Basecamp::Project.find(:all).each do |bc_project|

      project = Project.find_or_initialize_by_bc_id(bc_project.id)
      project.bc_id = bc_project.id
      project.name = bc_project.name
      project.status = bc_project.status

      if !project.company
        company = Company.new
        company.name = bc_project.company.name
        project.company = company
      end

      Basecamp::Milestone.list(project.bc_id).each do |bc_milestone|
        milestone = Milestone.find_or_initialize_by_id(bc_milestone.id)
        milestone.title = bc_milestone.title
        milestone.deadline = bc_milestone.deadline
        milestone.completed = bc_milestone.completed.to_s
        project.milestones << milestone
      end
      
      project.save

    end

  end
  
end
