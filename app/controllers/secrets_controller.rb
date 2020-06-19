class SecretsController < ApplicationController
  before_action :
  def show
    @secret = "This is the secret."
  end

  private
  def require_login
    return head(:forbidden) unless session.include? :name
end
