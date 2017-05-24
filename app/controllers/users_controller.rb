class UsersController < ApplicationController
  def create
    session[:user_id] = params[:selected_privilege] if params[:selected_privilege]
    render "outages/index"
  end

  def destroy
    reset_session
    render "outages/index"
  end


end
