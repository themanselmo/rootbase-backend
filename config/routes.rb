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

  get "/me", to: "organizations#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end