class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception



  protected

	  def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_in) do |user_params|
	    user_params.permit(:username, :email, :name, :lastname)
		  end
		end
end
