Rails.application.routes.draw do
resources :students
resources :school_classes

post '/students/new', to: "students#create"
post '/school_classes/new', to: "school_classes#create"

end
