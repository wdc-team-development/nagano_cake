Rails.application.routes.draw do
  namespace :admin do
    get 'homes/top'
  end
  get 'customers/show' => 'customers#show'
  get 'customers/edit' => 'customers#edit'
  get 'customers/unsubscribe' => 'customers#unsubscribe'
  resources :customers, only: [:withdraw, :unsubscribe, :update]
  devise_for :admins
  devise_for :customers
end