class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_login
    redirect_to '/' unless current_user
  end

  def liked_ids
    if current_user
      @liked_ids = current_user.articles.pluck(:id)
    end
  end
end
