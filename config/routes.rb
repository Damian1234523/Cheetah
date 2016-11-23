Rails.application.routes.draw do

  get 'lecturers/index'

  get 'lecturers/create'

  get 'lecturers/edit'

  get 'lecturers/destroy'

  get 'exams/index'

  get 'exams/create'

  get 'exams/edit'

  get 'exams/destroy'

  get 'courses/index'

  get 'courses/create'

  get 'courses/edit'

  get 'courses/destroy'

  get 'universities/index'

  get 'universities/create'

  get 'universities/edit'

  get 'universities/destroy'

  root 'testhome#home'

  get 'testhome/home'

  get 'sessions/new'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
