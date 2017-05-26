class UsersController < ApplicationController
  def create
    session[:user_id] = params[:selected_privilege] if params[:selected_privilege]
    redirect_to "outages/index"
  end

  def destroy
    reset_session
    redirect_to "outages/index"
  end


end
