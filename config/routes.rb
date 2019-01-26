Rails.application.routes.draw do
  resources :wallets
  resources :orders
  resources :trades
  resources :contacts
  resources :pages
  resources :faqs
  resources :accounts
  resources :withdraws
  resources :deposits

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)



  authenticated :user do
    root 'accounts#index', as: "authenticated_root"
  end
    root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
