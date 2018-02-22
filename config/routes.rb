Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  resources :users

  root 'welcome#index'

  get :signup, to: 'users#new'
  get :login, to: 'sessions#new'
  post :login, to: 'sessions#authenticate'
  delete :logout, to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
