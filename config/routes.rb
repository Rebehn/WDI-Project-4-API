Rails.application.routes.draw do
  scope :api do
    resources :users, except: [:create]
    resources :chat_rooms
    resources :messages

    post 'register', to: 'auth#register'
    post 'login', to: 'auth#login'

  end
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
