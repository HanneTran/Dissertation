# Author: Hanne Tran
# Date: 20.04.19
# Different paths in the system.

Rails.application.routes.draw do
  devise_for :users

  # This path displays when a user successfully signs in to the system.
  root to: 'pages#home'
  

  resources :patients do
    # These paths depends on the patient controller.
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
