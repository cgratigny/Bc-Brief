class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :last_update

  def last_update
    @last_update = CacheUpdate.first
  end
    
end
