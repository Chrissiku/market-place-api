Rails.application.routes.draw do
  # Api definition
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      # Our resources here
      resources :users, only: [:show, :create, :update, :destroy]
    end
  end
end
