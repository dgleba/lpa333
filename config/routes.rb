Rails.application.routes.draw do
  devise_for :users

  resources :surveys do
    resources :questions do
    end
  end

  resources :answers, only: [:create]

  root "surveys#index"


end
