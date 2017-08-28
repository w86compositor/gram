class HomeController < ApplicationController

	def after_sign_in_path_for(resource)
	  stored_location_for(resource) || root_path
	end
	
  def index
  end
end
