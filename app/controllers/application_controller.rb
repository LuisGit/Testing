class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller? 
 
  protect_from_forgery with: :exception
  #before_action :configure_permitted_parameters, if :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:f_name,:l_name, :email, :password, :password_confirmation)}
    #devise_parameter_sanitizer.for(:sign_up) << l_name
  end

end
