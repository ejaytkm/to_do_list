class HomeController < ApplicationController
	def index 
		if current_user.nil? == false 
			redirect_to "/users/#{current_user.id}"
		end 
	end 
end
