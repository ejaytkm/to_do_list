class HomeController < ApplicationController
	def index 
		if current_user.nil? == false 
			redirect_to "/users/#{current_user.id}"
		else 
			redirect_to "/login"
		end 
	end 
end
