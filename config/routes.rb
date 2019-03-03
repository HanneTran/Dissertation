Rails.application.routes.draw do
  get 'note/index'
  get 'type/index'
  get 'feature/index'
  get 'question/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :questions
  #root to: :controller => "patient"
  root 'patients#index'
  
  resources :patients do
    post :search, on: :collection
  end

  resources :features
#get 'patient/index'
end
