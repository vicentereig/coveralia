Coveralia::Application.routes.draw do
  devise_for :users

  root to: 'album_ownerships#index'
end
