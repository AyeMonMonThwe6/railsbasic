Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    get'/user/sign_out' => 'devise/sessions#destroy'
  end
  
  root to:'mypage#index'
  get :mypage,to:'mypage#index'
  
  resources :taggings
  resources :tags, except: :show
  resources :books
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
