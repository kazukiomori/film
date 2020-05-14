Rails.application.routes.draw do
  root 'hello#index'
  get 'movies/index'
  post 'movies/search'
  get 'movies/search'
  get 'movies/show'
  post 'movies/new'
  get 'movies/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
