class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  after_action :store_action

end
