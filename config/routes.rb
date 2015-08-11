Rails.application.routes.draw do

  root 'application#index'

  devise_for :users

  concern :commentable do
    resources :comments, except: [:show, :new, :edit]
  end

  namespace :api do
    namespace :v1 do
      resources :pages
      resources :albums
      resources :pictures
      resources :articles, except: [:new, :edit], concerns: :commentable do
        get :latest, on: :collection
      end
      resources :events
      resources :menus
    end
  end

  get '/*path', to: 'application#index'
end
