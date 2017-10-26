class SessionsController < ApplicationController

  def new
    @session = User.generate_session_token
    render :new
  end

  def create
    User.find_by_credentials(username, password)
    @session = User.reset_session_token!
    redirect_to cat_url
  end

  def destroy

  end
end
