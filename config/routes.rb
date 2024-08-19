Rails.application.routes.draw do
  devise_for :users
  get 'checkout', to: 'checkouts#show'
  get 'checkout/success', to: 'checkouts#success'
  root to: 'pages#home'
  get 'terms-and-conditions', to: 'pages#terms'
  get 'privacy-policy', to: 'pages#privacy'
  get 'cookies', to: 'pages#cookies'
end
