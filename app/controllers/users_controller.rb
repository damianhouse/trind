class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :authenticate, except: [:login, :create]
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  def login
    @current_user = User.find_by_email(params[:email])
    if @current_user && @current_user.authenticate(params[:password])
      create_token(@current_user)
      render json: @current_user
      @current_user.save
    else
    render json: "Wrong email and password combination. Please try again."
    end
  end

  def logout
    @current_user.token = nil
    render json: "Logout Successful"
  end

  # GET /users/1
  # GET /users/1.json
  def show
    render json: @user
  end

  # POST /users
  # POST /users.json
  def create

    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy

    head :no_content
  end

  private
    def create_token(user)
      user.token = SecureRandom.hex
    end

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :born_on, :summary, :photo_url, :thumbs_up, :thumbs_down, :token)
    end
end
