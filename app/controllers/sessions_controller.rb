class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:login]

  def index
    @name = session[:name]
  end

  def login

  end

  def create
    session[:name] = params[:name]
  end

end
