module SessionsHelper
  def log_in(user)
      session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    if(user_id = session[:user_id])
     @current_user ||= User.find_by(id: session[:user_id])
    elsif(user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if(user && user.authenticated?(cookies[:remember_token]))
        log_in(user)
        @current_user
      end
    end
  end

  def forget(user)
     user.delete_cookie
        cookies.delete(:user_id)
        cookies.delete(:remember_token)
  end


  def logged_in?
    !current_user.nil?
  end

  def authenticate_user
    redirect_to root_path unless logged_in?
  end

  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end

  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent.signed[:remember_token] = user.remember_token
  end
end
