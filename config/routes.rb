Rails.application.routes.draw do
  # get 'departments/index'
  # get 'departments/create'
  # get 'departments/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # index
  # get '/employees', to: "employees#index"
  # resources :employees, only: [:index, :new, :create]
  resources :departments
end
