class ReservationsController < ApplicationController
	before_action :set_reservation, only: [:show, :edit, :update, :destroy]
	
	def index
		@reservation= Reservation.all
	end


	def new
		@reservation = Reservation.new
	end


	def create

	@reservation.reserved_on = Date.today
	@reservation.due_date= Date.today + 7.days
	@book.total_in_library= @book.total_in_library - 1
	@resevation.save
	redirect_to reservation.url, notice: '{@book.title} has been reserved!'
	end

	def destroy

		@book.total_in_library= @book.total_in_library + 1
		@reservation.destroy
	end

private

	def set_reservation
		@reservation = Reservation.find(params[:id])
	end