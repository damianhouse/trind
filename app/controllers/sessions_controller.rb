class SessionsController < ApplicationController
  before_action :authenticate, only: [:destroy]
  def new
  end

  def create
    @current_user = User.find_by_email(params[:email])
    if @current_user && @current_user.authenticate(params[:password])
      create_token(@current_user)
      render json: @current_user
    else
    render json: "Wrong email and password combination. Please try again."
    end
  end

  def destroy
    @current_user.token = nil
    render json: "Logout Successful"
  end
end

private
def create_token(user)
  user.token = SecureRandom.hex
end
