Rails.application.routes.draw do
	get '/doctors', action: :index, controller: 'doctors'
	get '/patients/:id', to: 'patients#show'
	get '/doctors', to: 'doctors#index'
end
