Rails.application.routes.draw do
 
  resources :shots do 
    resources :comments 
    member do 
      put 'like', to: "shots#like"
      put 'unlike', to: "shots#unlike"
    end
  end
  

  devise_for :users, controllers: {registrations: 'registrations'}

  root 'shots#index'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   
end
