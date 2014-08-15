Rails.application.routes.draw do
  resources :images, :path => ''
  root 'images#index'
end
