Rails.application.routes.draw do
  
    devise_for :admins, controllers:{
    sessions: 'admin/sessions',
    passwords: 'admin/passwords',
    registrations: 'admin/registrations'
  }
  
  namespace :admin do
    resources :items
    resources :genres, only: [:index, :create, :edit, :update]
    resources :oder_details, only: [:update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :oders, only: [:show, :update]
    get 'homes/top' => 'homes#top'
  end
  devise_for :customers, controllers:{
          sessions: 'customers/sessions',
          passwords: 'customers/passwords',
          registrations: 'customers/registrations'
  }
  
  root 'homes#top'
  get 'about' => 'homes#about'
    
  resource :customers, only:[:show]
  get 'unsubscribe' => 'customers#unsubscribe'
  get 'customers/edit' => 'customers#edit'
  post 'customers' => 'customers#update'
  get 'unsubscribe' => 'customers#unsubscribe'
  patch 'withdraw' => 'customers#withdraw'

  resources :items, only:[:index, :show]

  resources :addres, only:[:index, :edit, :create, :update, :destroy]

  resources :cart_items, only:[:index, :update, :destroy, :create]
  delete 'destroy_all' => 'cart_items#destroy_all'

  resources :orders, only:[:new, :create, :index, :show]
  post 'comfirm' => 'orders#comfirm'
  get 'complete' => 'orders#complete'

end