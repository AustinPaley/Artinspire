Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :words, only: [:index]
      resources :arttypes, only: [:index]
    end
  end
end
