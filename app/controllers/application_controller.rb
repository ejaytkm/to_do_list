class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  helper_method :time_now

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
  
  def time_now 
		@time = Time.now
		if @time.hour > 12 
			if @time.min > 9
				@time = "#{@time.hour-12}" + ":" + "#{@time.min}" + "pm"
			else
				@time = "#{@time.hour-12}" + ":" + "0" + "#{@time.min}" + "pm" 
			end
		else 
			if @time.min > 9
				@time = "#{@time.hour}" + ":" + "#{@time.min}" + "am"
			else
				@time = "#{@time.hour}" + ":" + "0" + "#{@time.min}" + "am"
			end
		return @time
		end 
	end
end
