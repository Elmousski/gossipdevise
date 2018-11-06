class ApplicationController < ActionController::Base
  before_action :sanitize_devise_parameters, if: :devise_controller?
  def sanitize_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:anonymous_username])
  end
  @@session = nil
  before_action :set_session

  def self.set_session(user)
    @@session = user
  end

  def self.get_session
    return @@session
  end

  def set_session
    @current_user = ApplicationController.get_session
  end

end