Rails.application.routes.draw do
  
	
  resources :subjects
  resources :instructors
  resources :courses
  
  get 'static_pages/home'
  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
