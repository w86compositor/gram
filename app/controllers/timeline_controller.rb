class TimelineController < ApplicationController
  def index
    @all_pics = User.all
  end
end
