Rails.application.routes.draw do
  get 'home/index'
  get 'home/admin'
  root to: "home#index"
  resources :profiles
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations',
  confirmations: "users/confirmations"
  }
  devise_scope :user do
   patch "users/confirmation", to: "users/confirmations#confirm"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
