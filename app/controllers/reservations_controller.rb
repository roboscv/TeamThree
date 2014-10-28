class ReservationsController < ApplicationController
	before_action :set_reservation, only: [:show, :edit, :update, :destroy]
	before_action :set_book, only: [:create,:destroy]
	
	def index
		@reservations= Reservation.all
	end


	def new
		@reservation = Reservation.new
	end



#@log_entry = @wine.log_entries.new(log_entry_params)
		#if @log_entry.save
		#	redirect_to wine_log_entries_path(@wine), notice: 'Log entry saved!'
		#else 
		#	render :new
		#end


	def create
		if @book.total_in_library > 0
			@reservation= @book.reservations.new(book_id: params[:book_id], user_id: session[:user_id],
			reserved_on: Date.today, due_on: Date.today + 7.days)
			@book.total_in_library= @book.total_in_library - 1
			if @reservation.save
				redirect_to reservations_path, notice: '{@book.title} has been reserved!'
			else
				render :new
			end
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
