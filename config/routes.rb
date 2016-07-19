Rails.application.routes.draw do
  root "books#list"
  get "books/list", to: "books#list"
  get "books", to: "books#index"
  get "books/new", to: "books#new"
  post "books", to: "books#create"
  get "books/:id", to: "books#show"
  get "books/:id/edit", to: "books#edit"
  patch "books/:id", to: "books#update"
  put "books/:id", to: "books#update"
  delete "books/:id", to: "books#destroy"
end
