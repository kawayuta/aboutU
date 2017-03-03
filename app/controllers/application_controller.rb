class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
before_action :authenticate_user!
before_filter :set_current_user
before_action do
    RecordWithOperator.operator = current_user
  end
  before_filter :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :username, :email, :password, :token, :secret])
          devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :username, :email, :password, :token, :secret])
    end

private

  def set_current_user
    @current_user ||= User.find session[:user_id] if session[:user_id] 
  end

end
