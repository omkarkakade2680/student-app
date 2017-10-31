Rails.application.routes.draw do
  get 'student/new'
 post "students/:id"         => "students#show"

  root 'static_pages#home'
  get  '/signup',  to: 'students#new'
  resources :students
end