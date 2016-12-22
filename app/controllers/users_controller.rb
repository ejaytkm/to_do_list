class UsersController < ApplicationController
	def index 
	end 

	def show 
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
