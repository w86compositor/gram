class MusicgenresController < ApplicationController
	def jazz
		
		jazz = ["/music/jazz/Pista_1.mp3", "/music/jazz/Pista_2.mp3", "/music/jazz/Pista_3.mp3", "/music/jazz/Pista_4.mp3"]

		@random_jazz_song = jazz.sample

		@photobooths = Photobooth.all

	end

	def rock

	end
end
