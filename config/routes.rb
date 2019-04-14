Rails.application.routes.draw do
  get 'pages/home'
  get 'files/index'
  devise_for :users
  #devise_for :users
  get 'note/index'
  get 'type/index'
  get 'feature/index'
  get 'question/index'
  get 'patients/question'
  
  

  #get 'patients/:id/question' => 'patients#question'
  #get 'user_profiles/:id/edit' => 'user_profiles#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #resources :questions
  #root to: :controller => "patient"
  root to: 'pages#home'
  resources :notes
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

  namespace :charts do
   # collection do
      get 'features_by_category'
    end
#get 'patient/index'
end
