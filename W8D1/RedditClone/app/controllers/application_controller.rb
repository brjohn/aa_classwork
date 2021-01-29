class ApplicationController < ActionController::Base
    
  skip_before_action :verify_authenticity_token
  helper_method :current_user, :logged_in?, :author?

  def author?(post)
    current_user == post.author
  end

  # def require_author_only(post)
  #   current_user == post.author_id
  # end


  def current_user 
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def require_logged_in
    redirect_to new_session_url unless logged_in?
  end

  def login(user)
    @current_user = user
    session[:session_token] = user.reset_session_token!
  end

  def logged_in?
    !!current_user
  end


  def logout!
    current_user.reset_session_token! if logged_in?
    session[:session_token] = nil
    @current_user = nil
  end


end