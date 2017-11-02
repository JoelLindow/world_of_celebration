class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :current_user

  helper_method :current_user,
                :require_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id] && User.exists?(id: session[:user_id])
  end

  def require_user
    unless current_user
      flash[:notice] = "You ain't a user here, foo!"
      redirect_to root_path
    end

  end

end
