Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "outages#index"

  # get "/outages", to: "outages#index", as: "outages_index"
  resources :outages, only: [ :index, :edit ]
  resources :cis, only: [ :index, :edit, :update ]
end
