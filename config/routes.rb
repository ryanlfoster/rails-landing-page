Landingpage::Application.routes.draw do
  resources :subscribers

  devise_for :users

  root 'static#index'
  get '/about', to: 'static#about', as: "about"
end
