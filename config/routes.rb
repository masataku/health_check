Rails.application.routes.draw do
  root to: 'schools#index'
  resources :schools, only: [:new, :create]
end
