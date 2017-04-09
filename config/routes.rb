Rails.application.routes.draw do
  resources :descriptions
  resources :films do
    collection do
      get :search
    end
  end
  resources :film_companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
