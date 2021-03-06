Rails.application.routes.draw do
  root to: 'schools#index'
  resources :schools, only: [:show, :new, :create, :edit, :update] do
    member do
      get 'confirm'
    end 
    collection do
      get 'login_form'
      post 'login'
      get 'logout'
    end 
    resources :teachers, only: [:index, :new, :create, :destroy] do  
    end
    resources :students, only: [:index, :new, :create, :destroy] do
      resources :checks, only: [:new, :create]
    end
    resources :sheets, only: [:index, :show]    
  end  
end
