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

end
