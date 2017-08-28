class MusicgenresController < ApplicationController

	def index
		@photobooth = Photobooth.all
	end

	def show
		@photobooth = Photobooth.find(params[:id])

end
