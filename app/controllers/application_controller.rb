class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :reset_session
  before_action :configure_permitted_parameters, if: :devise_controller? 
  helper_method :current_order

  def current_order
  	if !session[:order_id].nil?
  		Order.find(session[:order_id])
  	else
  		Order.new
  	end
  end

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation) }
  end

end
