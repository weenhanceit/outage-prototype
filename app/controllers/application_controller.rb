class ApplicationController < ActionController::Base
  # require 'lib/user.rb'
  protect_from_forgery with: :exception
  before_action :get_privilege
  def get_privilege
    @privilege = "Phil"
  end
  def current_user
#    return unless session[:user_id]
    @current_user ||= User.new(session[:user_id])
  end
  helper_method :current_user
end
