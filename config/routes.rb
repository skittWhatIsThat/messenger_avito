Rails.application.routes.draw do
  namespace :webhooks do
    post 'new_message', to: 'avito#message'
    get 'new_message', to: 'avito#message'
    # post 'new_message', to: 'avito#message'
    # get 'new_token', to: 'avito#token'
    # get 'read_list_chat', to: 'avito#chat'
    #get 'new_token/',
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
