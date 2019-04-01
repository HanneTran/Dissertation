Rails.application.routes.draw do
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
  root 'patients#index'
  
  resources :patients do
    post :search, on: :collection
    resources :questions
  end

  resources :features
  resources :categories

  namespace :charts do
   # collection do
      get 'features_by_category'
    end
#get 'patient/index'
end
