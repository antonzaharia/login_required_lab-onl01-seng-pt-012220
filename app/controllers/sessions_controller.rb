class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new]

  def index
    @name = session[:name]
  end

  def new
  end

  def create
    if params[:name].nil?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session[:name].destroy
  end

end
