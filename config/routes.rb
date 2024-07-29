Rails.application.routes.draw do
  resources :courses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # welcome page route
  # get 'welcome/index'
  # set welcome page as the root
  root 'welcome#index'
  resources :students
end
