# Below are the routes for madmin
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
end
