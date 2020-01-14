Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :freegraffers do
    resources :booking_infos
  end

  #1 For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
