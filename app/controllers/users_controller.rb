class UsersController < ApplicationController

  def profile
  	@photobooths = Photobooth.all
  end

  def destroy
    @photobooth.destroy
    respond_to do |format|
      format.html { redirect_to users_profile_url, notice: 'Photobooth was successfully destroyed.' }
      format.json { head :no_content }


    end
  end
end
