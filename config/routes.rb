Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'pets', to: 'pets#index'
  get 'pets/new', to: 'pets#new', as: :new_pet
  post 'pets', to: 'pets#create'
  get 'pets/:id', to: 'pets#show', as: :pet
  get 'pets/:id/edit', to: 'pets#edit', as: :edit_pet
  patch 'pets/:id', to: 'pets#update'

  # As a user I can see all found pets ###########
  # As a user I can see details about one found pet (when and where it was found) ###########
  # As a user I can add a pet I found
  # As a user I can update a pet
  # As a user I can delete a pet
end
