class TimelineController < ApplicationController
  def index
    @all_pics = Photobooth.last
    @user = current_user
  end
end
