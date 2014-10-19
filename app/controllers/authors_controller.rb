class AuthorsController < ApplicationController
before_action :set_book
	def index
		@authors = Author.all
	end


	def create

	end


	def new

	end


	def edit

	end


	def show
		@author = Author.find(params[:id])
	end


	def update

	end


	def destroy

	end

	private

	def set_book
		@book = Book.find(params[:book_id])
	end
	def author_params
		params.require(:name, :dob, :nationality, :biography, :image_url).permit(:awards)
	end

end
