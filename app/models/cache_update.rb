class CacheUpdate < ActiveRecord::Base

  default_scope :order => 'updated DESC'  

  def is_current
    # if we don't know when this was updated, then
    if !updated
      return false
    end
    return updated > Time.now - 1.day  
  end
  
end
