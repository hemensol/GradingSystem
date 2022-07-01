Rails.application.routes.draw do
  resources :grade_reports
  resources :grades
  resources :submissions
  resources :registrars
  resources :instructor_courses
  resources :courses
  resources :instructors
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
