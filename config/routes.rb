Rails.application.routes.draw do
  resources :school_classes, only: [:index, :show, :create, :edit, :update, :new]
  resources :students, only: [:index, :show, :create, :edit, :update, :new]
end
