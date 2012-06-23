Coveralia::Application.routes.draw do
  resources :album_ownerships, except: [:show, :delete] do
    resources :covers, only: [:new, :create]
  end

  devise_for :users

  root to: 'album_ownerships#index'
end
