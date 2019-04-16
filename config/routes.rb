Rails.application.routes.draw do
 
  devise_for :users

  root to: 'pages#home'
  resources :patients do
    post :search, on: :collection
    get '/detail', to: 'patients#detail'
    get '/duration', to: 'features#duration'
    get '/notop', to: 'features#notop'
    get '/empt', to: 'features#empt'
    get '/variety', to: 'features#variety'
    resources :questions
    resources :notes
    resources :features
  end
  
  resources :qs
  resources :categories

end
