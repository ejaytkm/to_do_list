class TasksController < ApplicationController
	def new 
	end 

	def create 
		Task.create(description: params[:description], status: 'incomplete', list_id: params[:list_id])
		redirect_to :back
	end 

	def edit 
	end 

	def update 
	end 

	def destroy 
	end

end
