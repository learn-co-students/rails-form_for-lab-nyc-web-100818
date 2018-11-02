Rails.application.routes.draw do
  resources :school_classes
  # get '/school_classes' to 'school_classes#index' as: classes
  resources :students
end
