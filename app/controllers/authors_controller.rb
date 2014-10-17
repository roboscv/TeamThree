class AuthorsController < ApplicationController



	def index
		@authors = Author.all
	end


	def create
		@author = Author.new(author_params)
		if @author.save
			redirect_to @author
		else 
			render :new
		end
	end


	def new
		@author = Author.new
	end


	def edit
		@author = Author.find(params[:id])
	end


	def show
		@author = Author.find(params[:id])
	end


	def update
		@author = Author.find(params[:id])
		if @author.update(author_params)
			redirect_to @author
		else 
			render :new
		end
	end


	def destroy

	end

private
	def author_params
		params.require(:author).permit(:name, :dob, :nationality, :awards, :biography, :image_url)
	end
end
