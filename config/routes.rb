Rails.application.routes.draw do
  resources :properties
  namespace :api do
    namespace :v1 do 
      resources :properties
    end
  end
end
