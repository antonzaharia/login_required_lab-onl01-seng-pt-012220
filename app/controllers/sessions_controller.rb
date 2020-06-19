class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:login]

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
    end
  end

end
