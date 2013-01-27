class ApplicationController < ActionController::Base
  protect_from_forgery
private

def current_man
  @current_man ||= Man.find(session[:man_id]) if session[:man_id]
end
helper_method :current_man
end
