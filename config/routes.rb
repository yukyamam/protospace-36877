Rails.application.routes.draw do
  devise_for :users
  #get 'prototypes/index'
  root to: "prototypes#index"
  resources :prototypes do 
    resources :comments, only: [:index, :create]
  end
  resources :users, only: :show
end

#元々の5行目(7つのアクション終了時)
#resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy]