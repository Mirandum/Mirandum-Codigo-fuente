Rails.application.routes.draw do
  
  resources :personalizacions
  resources :compras
  #peticiones HTTP carrito
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'
  resources :productos do
     resources :comments
  end
  
  devise_for :users
  
  get 'welcome/index'

  
  root 'welcome#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
