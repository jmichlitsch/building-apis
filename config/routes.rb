Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :books, only: [:index, :show]
      # Without resources
      # get '/books', to: 'books#index'
      # get '/books/:id', to: 'books#show'
    end
  end
end
