Rails.application.routes.draw do
  root 'tops#index'

  get "mypage", to: "mypages#index", as: :mypages

  resources :workouts, only:[:new,:create,:show,:edit,:update,:destroy]
  resources :bodies, only:[:new,:create,:show,:edit,:update,:destroy]
  
  get 'youtube/index'
  devise_scope :user do
    get "signup", to: "users/registrations#new", as: :new_user_registration
    get 'login', to: 'users/sessions#new', as: :new_user_session
    post 'login', to: 'users/sessions#create', as: :user_session
    delete 'logout', to: 'users/sessions#destroy', as: :destroy_user_session
  end

  devise_for :users, skip: [:sessions],
  controllers: {
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
end
