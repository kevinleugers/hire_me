Rails.application.routes.draw do
  devise_for :users

  get '/dashboard', to: 'dashboard#index', as: :dashboard
  resources :jobs

  mount Soulmate::Server, :at => "/sm"

  root to: 'pages#home'
end
