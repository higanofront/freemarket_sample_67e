Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :items, only:[:new, :show, :destroy,:create,:edit, :update] do
    member do
      get 'buy'
      get 'confirm'
      get 'children'
      get 'grandchildren'
    end
    collection do
      get 'children', defaults: { format: 'json' }
      get 'grandchildren', defaults: { format: 'json' }
    end
  end

  resources :cards, only: [:new, :create, :show] do
    collection do
      post 'create', to: 'cards#create'
      post 'delete', to: 'cards#delete'
    end
  end
  resources :users, only: [:show]
end
   