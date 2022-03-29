class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller?

    # where to go after sign in
  def after_sign_in_path_for(resource)
    about_path
  end
  
#   where to go after sign out
  def after_sign_out_path_for(resource)
    about_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
  
end
