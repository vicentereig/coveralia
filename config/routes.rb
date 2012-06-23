Coveralia::Application.routes.draw do
  resource :album_ownerships

  devise_for :users

  root to: 'album_ownerships#index'
end
