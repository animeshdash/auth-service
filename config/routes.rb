Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: :create do
    collection do
      get 'myself'
    end
  end
  resources :sessions, only: :create
  get 'public_key.pem', to: 'keys#public_key', as: :public_key
end
