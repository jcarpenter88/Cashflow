class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def admin_logged_in
    redirect_to dashboard_index_path unless current_user.admin?
  end
end
