Rails.application.routes.draw do

  jsonapi_resources :conversations
  jsonapi_resources :retorts
  jsonapi_resources :users

end
