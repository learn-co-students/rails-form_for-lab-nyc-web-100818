Rails.application.routes.draw do
  resources :school_classes, except: %i[index destroy]
  resources :students, except: %i[:index destroy]
end
