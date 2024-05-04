Rails.application.routes.draw do
  get 'pages/media'
  resources :random_products
  resources :posts

  resources :tutorials
  devise_for :users
  root 'home#index'
  get "home/about"
  get "home/pricing"
  get "tutorials/:id/download", to: "tutorials#download", as: "download_tutorial"
  get "pages/media"
end
