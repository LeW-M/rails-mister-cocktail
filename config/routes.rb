Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails, only: [:index, :show, :create] do
    resources :doses, only: [:index, :show, :create, :destroy]
  end
end
