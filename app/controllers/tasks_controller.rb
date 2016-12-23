class TasksController < ApplicationController
	
	def new 
	end 

	def create 
		@task = Task.create(description: params[:description], status: 'incomplete', list_id: params[:list_id])
		respond_to do |format|
			format.js
		end
	end 

	def edit 
	end 

	def update 
		@task = Task.find_by_id(params[:id])
		@task.update(status: params[:status])
		
		if @task.status == "complete"
			render :action => 'update_complete.js.erb'
		else @task.status == "incomplete"
			render :action => 'update_incomplete.js.erb'
		end

	end 

	def destroy 
		@task = Task.find_by_id(params[:id])
		@task.destroy

		respond_to do |format|
			format.js 
		end
	end
end
