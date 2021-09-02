Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  get 'searches/search'
  devise_for :users

  root :to => "homes#top"
  get "home/about" => "homes#about"

  resources :books, only: [:index, :show, :edit, :create, :destroy, :update] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:index, :show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get 'follows' => 'relationships#follower', as: 'follows'
    get 'followers' => 'relationships#followed', as: 'followers'
    get "search", to: "users#search"
  end
  resources :groups, except: [:destroy]
  resources :chats, only: [:show, :create]
    get '/search', to: 'searches#search'
end




