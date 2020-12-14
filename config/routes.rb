Rails.application.routes.draw do
  devise_for :admins
  root "homes#top"
  get "homes/about" => "homes#about"
end
