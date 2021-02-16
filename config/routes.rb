Rails.application.routes.draw do
  root "articles#index"

  #The resources method maps all of the conventional routes for a collection of resources, such as articles.
  resources :articles
end
