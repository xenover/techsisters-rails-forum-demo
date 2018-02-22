class SessionsController < ApplicationController
  def new
  end

  def authenticate
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      flash[:notice] = "Logged in as #{user.username}"
      log_in user
      redirect_to user_path(user)
    else
      flash[:danger] = 'User not found or invalid password'
      render :new
    end
  end

  def destroy
    user = current_user
    log_out
    flash[:notice] = "Logged out #{user.username}"
    redirect_to root_path
  end
end
