Rails.application.routes.draw do

	resources :users do 
		resources :lists do 
			resources :tasks, only: [:new, :create, :edit, :update, :destory]
		end 
	end

	get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
	get '/sign_up' => 'users#new'
  post '/users' => 'users#create'
  get '/' => 'home#index'
  

end
