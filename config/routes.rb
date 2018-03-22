Rails.application.routes.draw do
  resources :soundcloud_query

  root 'soundcloud_query#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
