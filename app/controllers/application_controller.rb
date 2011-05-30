class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :last_update, :current_user

  def last_update
    @last_update = CacheUpdate.first
  end
  
  private
  
  def authenticate_user!
    if current_user == nil
      redirect_to log_in_path
    end
  end
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
    
end
