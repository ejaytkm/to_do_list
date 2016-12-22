class ListsController < ApplicationController
	def index 		 
	end

	def show
	end 

	def new 
		@list = List.new
	end 

	def create 
		@list = List.new(list_params)
		@list.user_id = current_user.id 
		@list.save!
		redirect_to "/"
	end 

	def edit
		@user = current_user
		@list = List.find_by_id(params[:id])
	end

	def update
		list = List.find_by_id(params[:id])
		list.update(list_params)
		redirect_to "/"
	end 

	def destroy 
		list = List.find_by_id(params[:list_id])
		list.destroy!
		redirect_to "/"
	end 

private 
	def list_params 
		params.require(:list).permit(:title, :description)
	end
end

