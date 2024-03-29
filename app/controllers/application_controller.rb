class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameter, if: :devise_controller?

  def configure_permitted_parameter
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :birth_date])
  end
end
