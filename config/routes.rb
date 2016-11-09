Rails.application.routes.draw do

  root 'testhome#home'

  get 'testhome/home'

  get 'sessions/new'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
