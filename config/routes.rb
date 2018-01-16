Rails.application.routes.draw do
 	get 'home/index'
 	root 'home#index'

  #this one line added lets the api automatically respond to json
	namespace :api, :defaults => {:format => :json} do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get is an http verb and "" will contain the URI. I want to read the collection of contacts
# get /contacts call will be handled by the contacts controller using the index action
		get "/contacts", to: "contacts#index"
# I want to create an item and add it to the collection
		post "/contacts", to: "contacts#create"

#get wants to read a single item of the collection the id
		get "/contacts/:id", to: "contacts#show"
#I want to update a certain item in the collection
		put "/contacts/:id", to: "contacts#update"
#I want to delete a certain item in the collection
		delete "/contacts/:id", to: "contacts#destroy"
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
