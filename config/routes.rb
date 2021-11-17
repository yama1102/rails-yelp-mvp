Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :new, :create, :show ] do
    resources :reviews, only: [:create] # :new was removed because of embedded
  end
end
