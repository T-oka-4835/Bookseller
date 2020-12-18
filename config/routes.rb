Rails.application.routes.draw do

  get 'calenders/index'
  devise_for :admin, skip: :all
  devise_scope :admin do
  get 'admins/sign_in',to: 'admins/sessions#new'
  post 'admins/sign_in',to: 'admins/sessions#create'
  delete 'admins/sign_out',to: 'admins/sessions#destroy'
  end

  devise_for :customer, skip: :all
  devise_scope :customer do
  get 'customers/sign_up', to: 'public/registrations#new'
  post 'customers/sign_up', to: 'public/registrations#create'
  patch 'customers', to: 'public/registrations#update'
  put 'customers', to: 'public/registrations#update'
  delete 'customers', to: 'public/registrations#update'
  get 'customers/sign_in',to: 'public/sessions#new'
  post 'customers/sign_in',to: 'public/sessions#create'
  delete 'customers/sign_out',to: 'public/sessions#destroy'
  get 'customers/password/new', to: 'public/passwords#new'
  get 'customers/password/edit', to: 'public/passwords#edit'
  patch 'customers/password', to: 'public/passwords#update'
  put 'customers/password', to: 'public/passwords#update'
  get 'login' => 'public/sessions#new', as: :new_customer_session
  post 'login' => 'public/sessions#create', as: :customer_session
  get 'signup' => 'public/registrations#new', as: :new_customer_registration
  post 'signup' => 'public/registrations#create', as: :customer_registration
  get 'password' => 'public/passwords#new', as: :new_customer_password
  get 'password/edit' => 'public/passwords#edit', as: :edit_customer_password
  post 'password' => 'publics/password#create', as: :customer_password
  #パスワード変更
  get 'password/:id' => 'public/registrations#edit', as: :edit_customer_registration
  patch "password/:id" => 'public/registrations#update', as: :update_customer_registration

  end

  root "public/homes#top"
  get "/about" => "public/homes#about"
  get "/customers/unsubscribe" => "public/customers#unsubscribe"
  patch "/customers/withdraw" => "public/customers#withdraw"
  scope module: :public do
  get "/customers/unsubscribe" => "customers#unsubscribe"
  patch "/customers/withdraw" => "customers#withdraw"
  get 'password/edit' => 'passwords#edit'
  resources :items, only:[:index, :show]
  get 'genre_items/:id' => "items#genre_items", as: "genre_items"
  get "/orders/complete" => "orders#complete"
  post "/orders/confirm" => "orders#confirm"
  resources :orders, only:[:new, :create, :index, :show]
  delete "/carts/destroy_all" => "carts#destroy_all"
  resources :carts, only:[:index, :update, :destroy, :create]
  resources :customers, only:[:edit, :show, :update]
  resources :addresses, only:[:index, :create, :edit, :destroy, :update]
  resources :calenders, only:[:index]
  end

  namespace :admins do
  get "/" => "homes#top"
  resources :customers, only:[:index, :show, :edit, :update]
  resources :genres, only:[:index, :create, :edit, :update]
  resources :orders, only:[:index, :show, :update]
  resources :items
  resources :order_details, only: [:update]
  patch "/orders/:order_id/order_detail/:id" => "order_details#update"
  end

end
