Rails.application.routes.draw do
  get 'welcome/index'

  resources :bookings
  root to: 'welcome#index'
end
