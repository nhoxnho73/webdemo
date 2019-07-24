Rails.application.routes.draw do
  devise_for :users
  resources :new_statuses
  resources :new_discriptions
# xác thực user trước khi load trang
  authenticated :user do
    root 'new_statuses#index'
  end
  root to: redirect('/users/sign_in')#load trang đăng nhập trước tiên

  resources :users do# set đường dẫn cho trang user
    member do
      put 'change_working_status', to: 'users#change_working_status'
    end
    collection do
      put 'lock/:id', to: 'users#lock'
      put 'unlock/:id', to: 'users#unlock'
      put 'reset_password/:id', to: 'users#reset_password'
      get 'change_password', to: 'users#change_password', as: 'user_change_password'
      put 'update_password', to: 'users#update_password', as: 'user_update_password'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
