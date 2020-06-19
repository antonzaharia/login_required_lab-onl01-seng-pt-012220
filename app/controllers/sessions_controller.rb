class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new]

  def index
    @name = session[:name]
  end

  def new
  end

  def create

      session[:name] = params[:name]
      redirect_to root_path

  end

  def destroy
    session[:name].destroy
  end

end
