Rails.application.routes.draw do
  namespace :admin do
    get 'dashboard/blog'
    get 'dashboard/main'
    get 'dashboard/user'
  end

  get 'about', to: 'pages#about'
  get 'leadgen/advertising/landingpage/lead', to: 'pages#contact', as: 'lead'
  resources :blogs
  resources :posts
  get 'posts/*missing', to: 'posts#missing'

  get 'query/:else/:another_one', to: 'pages#something'

  root to: 'pages#home'
end
