Coveralia::Application.routes.draw do
  get "album_ownerships/index"

  get "album_ownerships/create"

  get "album_ownerships/show"

  get "album_ownerships/update"

  devise_for :users

  root to: 'album_ownerships#index'
end
