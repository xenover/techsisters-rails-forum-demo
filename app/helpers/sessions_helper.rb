module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    return unless session[:user_id]
    User.find(session[:user_id])
  end

  def log_out
    session[:user_id] = nil
  end
end
