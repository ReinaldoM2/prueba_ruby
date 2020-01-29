Rails.application.routes.draw do
	resources :articles
=begin
		get '/articles' 				#index
		post '/aticles' 				#create
		delete '/articles' 				#delete
		get '/aticles/:id' 				#show
		get '/articles/new' 			#new
		get '/articles/:id/edit' 		#edit
		patch '/articles/:id' 			#update
		put '/articles/:id' 			#update
=end
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
