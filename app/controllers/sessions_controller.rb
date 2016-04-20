class SessionsController < ApplicationController
  before_action :authenticate, except: [:login, :oauth]
  before_action :set_user, only: [:logout]

  def login
    @current_user = User.find_by_email(params[:email])
    if @current_user && @current_user.authenticate(params[:password])
      create_token(@current_user) if @current_user.token.nil?
      @current_user.save
    else
      render json: "Wrong email and password combination. Please try again."
    end
    @current_user
  end

  def oauth
    @current_user = User.find_by(uid: params[:uid]) || User.find_by(email: params[:email])
    if @current_user
      create_token(@current_user) if @current_user.token.nil?
      @current_user.save
    else
      @current_user = User.create!(uid: params[:uid], email: params[:email], name: params[:name], photo_url: params[:photo_url], password: params[:token], password_confirmation: params[:token])
      create_token(@current_user)
      @current_user.save
    end
    @current_user
  end

  def logout
    @current_user.token = nil
    @current_user.save

  end

  private
    def set_user
      @current_user = User.find_by(token: params[:token])
    end

end
