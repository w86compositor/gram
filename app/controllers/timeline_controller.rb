class TimelineController < ApplicationController
  def index
    @all_pics = Photobooth.all
    @user = User.all
  end
end
