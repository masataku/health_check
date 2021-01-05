Rails.application.routes.draw do
  root to: 'schools#index'
  resources :schools, only: [:show, :new, :create] do
    member do
      get 'confirm'
    end  
  end  
end
