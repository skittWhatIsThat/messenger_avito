Rails.application.routes.draw do
  namespace :webhooks do
    get 'new_message', to: 'avito#message'
  end

  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      resources :messages
      resources :accounts
      resources :chats
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
