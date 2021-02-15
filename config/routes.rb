Rails.application.routes.draw do
  namespace :admin do
    get 'homes/top'
  end
  devise_for :admins
  devise_for :customers
end