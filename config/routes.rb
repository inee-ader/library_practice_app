Rails.application.routes.draw do
  resources :beings
  resources :library_visits
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
