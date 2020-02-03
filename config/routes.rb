Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :new, :create]
  get '/student/:id', to: 'students#show', as: 'student'
end

#     Prefix  Verb  URI Pattern           Controller#Action
#    students GET  /students(.:format)     students#index
#             POST /students(.:format)     students#create
# new_student GET  /students/new(.:format) students#new
#     student GET  /student/:id(.:format)  students#show