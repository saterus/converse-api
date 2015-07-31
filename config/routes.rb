Rails.application.routes.draw do

  jsonapi_resources :conversations
  jsonapi_resources :users

end
