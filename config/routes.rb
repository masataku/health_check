Rails.application.routes.draw do
  root to: 'schools#index'
  resources :schools, only: [:show, :new, :create, :edit, :update] do
    member do
      get 'confirm'
    end 
    collection do
      get 'login_form'
      get 'login'
      get 'logout'
    end 
    resources :teachers, only: [:index] do
      collection do
        get 'login_form'
        get 'login'
      end  
    end  
  end  
end
