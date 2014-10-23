class BooksController < ApplicationController
	before_action :set_book, only: [:show, :edit, :update, :destroy]
	def index
		@available_at = Time.now
		@books= Book.order(:title).page(params[:page])
	end

	def new
		@book = Book.new
	end

	def show
		@avalaible_reservations = @book.total_in_library - (Reservation.find(:all, :conditions => "book_id = #{@book.id}").count)
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			redirect_to @book, notice: "#{@book.title} was created!"
		else
			render :new
		end
	end

	def update
		if @book.update(book_params)
			redirect_to @book, notice: "#{@book.title} was updated!"
		else
			render :new
		end
	end
	def destroy
		@book.destroy
		redirect_to books_url, notice: "#{@book.title}  successfully deleted."
	end

	private

	def book_params
		params.require(:book).permit(:title, :author_id, :isbn, :abstract, :pages, :genre, :published_on, :total_in_library, :image_cover_url)
	end

	def set_book
		@book = Book.find(params[:id])
	end
	def set_author
		@author = Author.where('id=?', :author)
	end
end

