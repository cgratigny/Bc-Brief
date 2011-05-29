class ProjectsController < ApplicationController

  def index

    @milestone_presets = Milestone::presets
    @projects = Project.find_all_by_hidden_and_status(nil,'active')
    
  end
  
  def hidden
    
    @milestone_presets = Milestone::presets
    @projects = Project.find_all_by_hidden_and_status(true,'active')
    render "index"
  end
  
  def hide

    project = Project.find(params[:id])
    project.hidden = true
    project.save
    flash[:notice] = "Removed " + project.name + " from the list."
    redirect_to root_url

  end
  
  def show

    project = Project.find(params[:id])
    project.hidden = nil
    project.save
    flash[:notice] = "Added " + project.name + " to the list."
    redirect_to root_url

  end
  
end
