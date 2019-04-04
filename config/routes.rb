Rails.application.routes.draw do
  # get 'departments/index'
  # get 'departments/create'
  # get 'departments/new'

  # index
  # get '/employees', to: "employees#index"
  resources :employees
  resources :departments
end
