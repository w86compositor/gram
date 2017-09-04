class UsersController < ApplicationController

  def profile
  	@photobooths = Photobooth.all
end

end
