class ApplicationController < ActionController::API
  before_action :set_default_response_format

  protected

  def set_default_response_format
   request.format = :json
  end

  private def authenticate
    if params[:token]
      @current_user = User.find_by(token: params[:token])
    else
      render json: "User must be logged in!"
    end
  end
end
