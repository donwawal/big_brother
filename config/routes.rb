BigBrother::Application.routes.draw do
  root 'static_pages#home'
  get 'about' => 'static_pages#about'
  get 'contact_us' => 'static_pages#contact_us'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]
end
