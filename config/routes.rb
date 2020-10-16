Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :books
      # Without resources
      # get '/books', to: 'books#index'
      # get '/books/:id', to: 'books#show'
      # post '/books', to: 'books#create'
      # patch '/books/:id', to: 'books#update'
      # put '/books/:id', to: 'books#update'
      # delete '/books/:id', to: 'books#destroy'
    end
  end
end
