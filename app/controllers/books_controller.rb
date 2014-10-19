class BooksController < ApplicationController
	before_action :set_book, only: [:show, :edit]
	def index
		@books= Book.all
	end

	def new
		@book = Book.new
	end

	def show

	end
	def create
		@book = Book.new(book_params)
		if @book.save
			redirect_to @book, notice: "#{@book.title} was created!"
		else
			render :new
		end
	end

	def edit
	end

	private

	def book_params
		params.require(:book).permit(:title, :author_id, :abstract, :pages, :genre, :published_on, :total_in_library)
	end
	def set_book
		@book = Book.find(params[:id])
	end
end

