require_dependency 'password'

class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    @current_user ||= session[:user_id] && User.find_by_id(session[:user_id]) # Use find_by_id to get nil instead of an error if user doesn't exist
  end

  def user_name
    current_user.profile.first_name + " " + current_user.profile.last_name
  end

  helper_method :current_user #make this method available in views
  helper_method :user_name
end
