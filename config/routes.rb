Rails.application.routes.draw do
  namespace :admin do
    get 'dashboard/blog'
    get 'dashboard/main'
    get 'dashboard/user'
  end

  get 'about', to: 'pages#about'
  get 'leadgen/advertising/landingpage/lead', to: 'pages#contact', as: 'lead'
  resources :blogs

  root to: 'pages#home'
end
