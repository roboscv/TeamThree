class ReservationsController < ApplicationController
	before_action :set_reservation, only: [:show, :edit, :update, :destroy]
	
	def index
		@reservations= Reservation.all
	end


	def new
		@reservation = Reservation.new
	end


	def create
	@reservation = @book.reservation.new

		if @reservation.save
			@reservation.book_id = :book_id
			@reservation.reserved_on = Date.today
			@reservation.due_date= Date.today + 7.days
			@book.total_in_library= @book.total_in_library - 1
			redirect_to reservations_path, notice: '{@book.title} has been reserved!'
		else
			render :new
		end

	end

	def destroy

		@book.total_in_library= @book.total_in_library + 1
		@reservation.destroy
	end

private

	def set_user
		@user=User.find(params[:user_id])
	end

	def set_book
		@book=Book.find(params[:book_id])
	end

	def set_reservation
		@reservation = Reservation.find(params[:id])
	end

end
