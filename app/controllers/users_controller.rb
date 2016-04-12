class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :authenticate, except: [:create]
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # POST /users
  # POST /users.json
  def create

    @user = User.new(user_params)

    unless @user.save
      render json: @user.errors, status: :unprocessable_entity
    else
      create_token(@user)
      @user.save
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
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

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :born_on, :summary, :photo_url, :thumbs_up, :thumbs_down, :token)
    end
end
