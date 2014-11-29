class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def is_admin
    unless session[:admin] == "admin"
      redirect_to :action => "manage", :controller => "events"
    end
  end
end
