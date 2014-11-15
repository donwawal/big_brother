BigBrother::Application.routes.draw do
  root 'static_pages#home'
  get 'account_activations/edit'
  get 'sessions/new'
  
  get 'about' => 'static_pages#about'
  get 'contact_us' => 'static_pages#contact_us'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]

end
