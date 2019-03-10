Rails.application.routes.draw do

resources :users, only: [:new, :create, :show]
resources :rides, only: [:new, :create, :show]

   get '/signin' => 'sessions#new'
   post '/signin' => 'sessions#create'
   get '/login' => 'sessions#new'
   post '/login' => 'sessions#create'
   get '/logout' => 'sessions#destroy'
   get '/attractions' => 'attractions#home'
   resources :attractions

   patch '/attractions/:id'=> 'attractions#update'

  root 'users#home'

end
