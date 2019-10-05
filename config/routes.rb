Rails.application.routes.draw do
  get 'microposts/create'
  get 'microposts/destroy'
  root to:'toppages#index'
  
  get 'login', to:'sessions#new'
  post 'login', to:'sessions#create'
  delete'logout',to:'sessions#destroy'

  get 'signup',to:'users#new'
  resource :users, only: [:index,:show,:new, :create]
  
  resource :microposts, only:[:create,:destroy]
end
