class SessionsController < ApplicationController
  before_action :authenticate, only: [:destroy]
  def new
  end

  def create
    @current_user = User.find_by_email(params[:email])
    if @current_user && @current_user.authenticate(params[:password])
      create_token(@current_user)
      render json: @current_user
      @current_user.save
    else
    render json: "Wrong email and password combination. Please try again."
    end

    if params[:email]
      user = User.find_by(email: params[:email])
      user_auth = user && user.authenticate(params[:password])
    else
      auth = request.env["omniauth.auth"]
      user = User.find_by(github_user_name: auth[:info]["nickname"])
      user_auth = true
    end
    if user && user_auth
      session[:user_id] = user.id
      session[:person_type] = user.person_type
      if user.person_type
        redirect_to root_url, notice: "Signed in!"
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
