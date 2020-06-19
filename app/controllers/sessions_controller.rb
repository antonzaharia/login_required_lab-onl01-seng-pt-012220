class SessionsController < ApplicationController
  def index
  end

  def login
  end

  def create
  end

  def secret
  end

  private
  def current_user
    session[:user_id]
  end

end
