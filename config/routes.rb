Rails.application.routes.draw do
  get 'projects/dashboard'
  get 'projects/create'
  post 'projects/create'

  root 'projects#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
