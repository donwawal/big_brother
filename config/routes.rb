BigBrother::Application.routes.draw do
  root 'static_pages#home'

  get 'about' => 'static_pages#about'
  get 'contact_us' => 'static_pages#contact_us'
  get 'signup' => 'users#new'

  resources :users

end
