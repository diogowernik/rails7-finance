require 'sidekiq/web'

Rails.application.routes.draw do
  resources :investments
  resources :portfolios
  resources :br_reits
  resources :br_stocks
  # draw :madmin
  resources :posts

  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
authenticate :user, lambda { |u| u.admin? } do
  mount Sidekiq::Web => '/sidekiq'

  namespace :madmin do
    resources :services
    resources :posts
    resources :announcements
    namespace :action_text do
      resources :encrypted_rich_texts
    end
    namespace :action_text do
      resources :rich_texts
    end
    resources :users
    namespace :active_storage do
      resources :variant_records
    end
    namespace :active_storage do
      resources :blobs
    end
    namespace :active_storage do
      resources :attachments
    end
    root to: "dashboard#show"
    resources :impersonates do
      post :impersonate, on: :member
      post :stop_impersonating, on: :collection
    end
  end
end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  root to: 'posts#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
