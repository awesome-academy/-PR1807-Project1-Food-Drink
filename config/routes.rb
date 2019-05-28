Rails.application.routes.draw do
  resources :users


  resources :categories 
  resources :products
  

  get 'signup' => 'users#new'
  get 'about'  => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  root              'static_pages#home'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
