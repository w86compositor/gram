class UsersController < ApplicationController
  before_action :authenticate_user!

  def profile
  	@photobooths = Photobooth.all
  end

  def destroy
    @user = User.find 1
    @photobooth.destroy
    respond_to do |format|
      format.html { redirect_to authenticated_root_path(@photobooth), notice: 'Photobooth was successfully destroyed.' }
    end
  end
end
