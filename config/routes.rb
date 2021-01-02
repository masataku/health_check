Rails.application.routes.draw do
  get 'schools/index'
  root to: 'schools#index'
end
