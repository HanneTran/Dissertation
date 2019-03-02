Rails.application.routes.draw do
  get 'feature/index'
  get 'question/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :patients do
    post :search, on: :collection
  end
  resources :questions
  #root to: :controller => "patient"
  root 'patient#index'
  

resources :features
#get 'patient/index'
end
