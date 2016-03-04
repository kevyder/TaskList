Rails.application.routes.draw do
  resources :todo_lists do
    resources :items
  end
  root 'todo_lists#index'
end
