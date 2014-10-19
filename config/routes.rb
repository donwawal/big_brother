BigBrother::Application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/contact_us'

  get 'static_pages/about'

  resources :users

end
