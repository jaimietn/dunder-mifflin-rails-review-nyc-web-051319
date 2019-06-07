Rails.application.routes.draw do
  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#creates all following routes for gods and employees
# get 'pets/index'
# get 'pets/show'
# get 'pets/new'
# get 'pets/edit'
