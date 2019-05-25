Rails.application.routes.draw do
  resources :new_statuses
  resources :new_discriptions

  root 'new_statuses#index'
  get 'new_discriptions/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
