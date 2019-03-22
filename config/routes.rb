Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  resources :students, only: [:show,:create,:edit,:new, :update]
  resources :school_classes, only: [:show,:create,:edit,:new, :update]
  # patch 'students/:id', to: 'students#update'
  # patch 'school_classes/:id', to: 'school_classes#update'
end
