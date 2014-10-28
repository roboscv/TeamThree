class OverdueController < ApplicationController
before_action :set_reservation, only: [:show, :edit, :update, :destroy]

	def index
		@reservation= Reservation.all
	end


private

	def set_reservation
		@reservation = Reservation.find(params[:id])
	end
end
