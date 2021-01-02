Rails.application.routes.draw do
  root to: 'schools#index'
  resources :schools, only: [:show, :new, :create]
end
