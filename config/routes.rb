Rails.application.routes.draw do
  resources :accomendations do
    resources :reviews, only: [:new, :create]
  end
end
