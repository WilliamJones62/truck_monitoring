Rails.application.routes.draw do
  resources :trucks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'trucks#index'
end
