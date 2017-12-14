Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'

  resources :subscriptions
  resources :students #, only: [:index, :create]
  resources :semesters
  resources :disciplines #, except: [:index, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
