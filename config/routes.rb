Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/status' => 'status#index'

  get '/consoles' => 'console#index'

  get '/console/:manufacturer' => 'console#find'

  get '/home' => 'home#index'

  get '/about' => 'about#index'
end
