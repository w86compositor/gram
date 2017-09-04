class MusicgenresController < ApplicationController

	def index
	end
	
	def create
	end

	def show
		@photobooth = Photobooth.find(params[:id])
  end

end
