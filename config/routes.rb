Rails.application.routes.draw do

  get 'text/index'

  get 'text/create'

  get 'text/new'

  get 'text/show'

  get 'text/edit'

  get 'text/destroy'

  resources :universities do
    resources :courses do
      resources :lecturers
    end
  end

  get 'lecturers/index'

  get 'lecturers/new'

  post 'lecturers/new', to: 'lecturers#create'

  get 'lecturers/show'

  post 'lecturers/create'

  get 'lecturers/edit'

  get 'lecturers/destroy'

  get 'exams/index'

  get 'exams/create'

  get 'exams/edit'

  get 'exams/destroy'

  get 'courses/index'

  get 'courses/create'

  post 'courses/create'

  get 'courses/edit'

  get 'courses/show'

  get 'courses/destroy'

  get 'courses/new'

  post 'courses/new', to: 'courses#create'

  get 'courses/show'

  get 'universities/index'

  post 'universities/new', to: 'universities#create'

  get 'universities/edit'

  get 'universities/destroy'

  get 'universities/new'

  root 'universities#index'

  get 'testhome/home'

  get 'sessions/new'

  devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
