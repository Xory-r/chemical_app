class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resource)
    '/posts'
  end

  private

  def configure_permitted_parameters
    # strong parametersを設定し、user_idを許可
    
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:user_id, :password, :password_confirmation)
    end
    
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:user_id, :password, :remember_me)
    end
    
    devise_parameter_sanitizer.permit(:account_update) do |user_params|
      user_params.permit(:user_id, :password, :password_confirmation, :current_password)
    end
  end
end

