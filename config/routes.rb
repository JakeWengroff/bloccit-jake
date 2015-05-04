Rails.application.routes.draw do

  devise_for :users
  resources :users
  
  resources :topics do
    resources :posts, except: [:index]
  end
 
  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end

  resources :questions
  resources :advertisements

  get 'about' => 'welcome#about'

  root to: 'welcome#index'

end
