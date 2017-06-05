class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #is used to give sites with no loginaccess another layout
  layout :layout_by_resource
  protected
  def layout_by_resource
    if devise_controller? && action_name == "new"
      "no_login"
    else
      "application"
    end
  end

  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

end
