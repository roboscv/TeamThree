class AuthorsController < ApplicationController
	before_action :set_author, only: [ :edit, :show, :update, :destroy ]


	def index
		@authors = Author.all
	end


	def create
		@author = Author.new(author_params)
		if @author.save
			redirect_to @author, notice: "#{@author.name} was created!"
		else 
			render :new
		end
	end

	def new
		@author = Author.new
	end


	def edit
	end


	def show
	end


	def update
		if @author.update(author_params)
			redirect_to @author, notice: "#{@author.name} was updated!"
		else 
			render :new
		end
	end


	def destroy
  		@author.destroy
  		redirect_to authors_url
	end

private
	def author_params
		params.require(:author).permit(:name, :dob, :nationality, :awards, :biography, :image_url)
	end

	def set_author
		@author = Author.find(params[:id])
	end
end
