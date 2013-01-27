class SessionsfController < ApplicationController
  def create
    man = Man.from_omniauth(env["omniauth.auth"])
    session[:man_id] = man.id
    redirect_to root_url
  end

  def destroy
    session[:man_id] = nil
    redirect_to root_url
  end
end
