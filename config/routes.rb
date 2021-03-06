Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  devise_for :users
  root to: 'pages#home'

  resources :freegraffers do
    resources :booking_infos

    collection do
      get 'top'
    end

  end

  #1 For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
