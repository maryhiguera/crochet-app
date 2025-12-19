Rails.application.routes.draw do
  resources :patterns, only: [ :index, :show, :new, :create ]
  root "patterns#index"
end
