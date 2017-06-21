Rails.application.routes.draw do
  
  namespace :admin do
   get 'dashboard/main'
   get 'dashboard/user'
   get 'dashboard/blog'
  end

  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolio#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  
  
  resources :blogs do 
    member do
      get :toggle_status
    end
  end  
 
  root to: 'pages#home'
end
