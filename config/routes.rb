Rails.application.routes.draw do
  resources :garden_tasks
  resources :employee_tasks
  resources :tasks
  resources :gardens
  resources :employees
  resources :organizations, only: [:create]
  resources :users, only: [:create]

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  post "/login_employee", to: "employee_sessions#create"
  delete "/logout_employee", to: "employee_sessions#destroy"

  get "/me", to: "organizations#show"
  get "/me2", to: "employees#show"
  
  get "my_tasks", to: "employee_tasks#my_tasks"

  get "/organization_employees", to: "organizations#employees"

  post "/rails/active_storage/direct_uploads", to: "direct_uploads#create"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
