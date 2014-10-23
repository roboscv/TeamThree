class OverdueController < ApplicationController

	def index
		@reservation= Reservation.all
	end


end
