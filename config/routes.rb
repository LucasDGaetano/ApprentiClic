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

  get "faux_site", to: "fake_caf#welcome"
  get "faux_site/mes_ressources", to: "fake_caf#my_resources"
  get "faux_site/mes_ressources/mon_profil", to: "fake_caf#my_profile"
  get "faux_site/mes_ressources/mon_profil/details", to: "fake_caf#my_profile_details"
  get "faux_site/mes_ressources/mon_profil/modifications", to: "fake_caf#modify"
  get "faux_site/mes_ressources/amont", to: "fake_caf#amount"
end
