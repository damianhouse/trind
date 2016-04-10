class SessionsController < ApplicationController
  before_action :authenticate, except: [:login]
  before_action :set_user, only: [:logout]
  def login
    @current_user = User.find_by_email(params[:email])
    if @current_user && @current_user.authenticate(params[:password])
      create_token(@current_user) if @current_user.token.nil?
      @current_user.save
    else
      render json: "Wrong email and password combination. Please try again."
    end

  end

  def logout
    @current_user.token = nil
    @current_user.save
    render json: "Logout Successful"
  end

  private
  def set_user
    @current_user = User.find_by(token: params[:token])
  end
  def create_token(user)
    user.token = SecureRandom.hex
  end
end
