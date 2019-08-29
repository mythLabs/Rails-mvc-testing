Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index' 
  get '/home' => 'home#index'
  get '/about' => 'about#index'
  get '/consoles' => 'consoles#index'
  resources(:consoles)

  namespace :api do
    get '/status' => 'status#index'
    get '/consoles' => 'console#index'
    get '/console/:manufacturer' => 'console#find'
  end

end
