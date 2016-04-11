class ApplicationController < ActionController::API
  before_action :set_default_response_format

  protected

  def set_default_response_format
   request.format = :json
  end
  
  private def authenticate
    @current_user = User.find_by(token: params[:token])
    unless @current_user
      render json: "User must be logged in!"
    end
  end
end
