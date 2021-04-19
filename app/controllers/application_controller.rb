class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if :devise_controller?
  
  protected 

  def configure_permitted_parameters
    devise_paremeter_sanitizer.permit(:sing_up, keys: [:name, :email, :password, :password_confirmation])
  end
end
