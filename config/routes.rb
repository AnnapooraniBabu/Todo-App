Rails.application.routes.draw do
  root 'todos#index'
  # post 'todos',:to=>'todos#create'
  # get 'todos/:id', to: 'todos#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
