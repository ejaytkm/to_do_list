class UsersController < ApplicationController
	def index 
	end 

	def show 
		@time = Time.now
		if @time.hour > 12 
			@time = "#{@time.hour-12}" + ":" + "#{@time.min}" + "pm"
		else 
			@time = "#{@time.hour}" + ":" + "#{@time.min}" + "am"
		end 
		@user = current_user
		@list = List.where(user_id: @user.id)
	end

	def new 
	end 

	def create 
		user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
	end 

	def update 
	end 



	def destroy 
	end 

private 

	def user_params 
		params.require(:user).permit(:email, :password, :password_confirmation)
	end 

end
