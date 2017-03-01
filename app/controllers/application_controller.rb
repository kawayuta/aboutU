class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

before_action do
    RecordWithOperator.operator = current_user
  end
  before_filter :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :username, :email, :password])
          devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :username, :email, :password])
    end


end
