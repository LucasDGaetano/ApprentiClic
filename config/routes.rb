Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/profil", to: "pages#dashboard", as: :profile
  get "/cours/:id/recap", to: "courses#overview", as: :overview

  resources :courses, only: [:index, :show, :new, :create] do
    resources :comments, only: :create
    resources :users_courses, only: :create
  end
  resources :users_chapters, only: :update

  resources :comments, only: :show do
    resources :answers, only: :create
  end

  get "fake_site", to: "fake_caf#welcome"
  get "fake_site/my_resources", to: "fake_caf#my_resources"

end
