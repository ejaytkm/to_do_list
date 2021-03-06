class UsersController < ApplicationController
	def index 
	end 

	def show 

		@user = current_user
		##forcastAPI from darkcloudskys.net
		@weather = ForecastIO.forecast(3.1390, 101.6869) 
		@current_weather = @weather[:currently]

		if @user.roles == "user"
			if params[:search].nil? == true 
				@list = List.where(user_id: @user.id).paginate(page: params[:page]).order('id DESC').per_page(3)
			else 
				@list = List.search_title_description(params[:search]).paginate(page: params[:page]).order('id DESC').per_page(2)
			end
		else #this is for admins and heaven 
			@user_all = User.all.paginate(page: params[:page]).order('id DESC').per_page(8)
		end 

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
