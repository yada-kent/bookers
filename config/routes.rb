Rails.application.routes.draw do
  # get '/books' => 'books#index'
  # get '/books' => 'books#index'
  # get '/show' => 'books#show'
  # get '/edit' => 'books#edit'
  # post 'books' => 'books#create'
   root to: 'homes#top'
  # get 'books/:id' => 'books#show' , as: 'book'
  # get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  # patch 'book/:id' => 'books#update', as: 'update_book'
  # delete 'books/:id' => 'books#destroy', as: 'destroy_book'
   resources :books

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
