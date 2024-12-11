Rails.application.routes.draw do

  authenticate :user, lambda { |u| u.admin? } do
    mount Motor::Admin => '/motor_admin'
  end
  devise_for :users
  get 'checkout', to: 'checkouts#show'
  get 'checkout/success', to: 'checkouts#success'
  root to: "journals#index"
  get 'terms-and-conditions', to: 'pages#terms'
  get 'privacy-policy', to: 'pages#privacy'
  get 'cookies', to: 'pages#cookies'


  resources :journals, except: :destroy do
    resources :journalpages, except: :destroy
  end
  resources :journalpages, only: :destroy
  resources :journals, only: :destroy
end
