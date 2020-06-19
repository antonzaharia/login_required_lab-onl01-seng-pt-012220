class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:login]
  def index

  end

  def login
  end

  def create
  end

  def secret
  end



end
