class SessionsController < ApplicationController

  def create
    user = User.from_omniauth(requent.env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to user_path(user.uid)
  end

end
