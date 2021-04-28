Rails.application.routes.draw do
  

  # get 'pages/index'
  # get 'pages/show'
  # get 'pages/new'
  # get 'pages/edit'
  # get 'pages/delete'
  # get 'subjects/index'
  # get 'subjects/show'
  # get 'subjects/new'
  # get 'subjects/edit'
  # get 'subjects/delete'
  # root "demo#index"
  
  root "subjects#index"
  
  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end
  
  # Default route not used these days
  # get ":controller(/:action(/:id))"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
