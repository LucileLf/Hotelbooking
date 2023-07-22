class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_query

  def set_query
    @query = Room.ransack(params[:q])
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:prenom, :nom])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:prenom, :nom])
  end

  def after_sign_in_path_for(resource)
    rooms_path
  end
end
