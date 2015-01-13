Rails.application.routes.draw do
  devise_for :users

  get '/dashboard', to: 'dashboard#index', as: :dashboard
  resources :jobs

  root to: 'pages#home'
end
