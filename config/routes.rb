Apptemplate::Application.routes.draw do
  devise_for :users
  
  root 'static#index'
  get '/about', to: 'static#about', as: "about"
end
