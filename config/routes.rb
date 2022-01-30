Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'

  resources :tourisms, only: [:new, :create, :index, :show, :destroy,:update,:edit] do
    resource :favorites, only: [:create, :destroy]
    resources :tourism_comments, only: [:create, :destroy]
  end


  resources :users, only: [:show, :edit, :update]
end
