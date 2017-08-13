Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'welcome/thankyou'

  resources :bookings
  root to: 'welcome#index'
end
