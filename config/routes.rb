Rails.application.routes.draw do

  resources :home, only: %i[index new create show destroy]
  root to: "home#index"

  # controllerをカスタマイズできるようにする記述
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    sessions:      'users/sessions',
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
