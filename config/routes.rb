Rails.application.routes.draw do
  resources :keyword_quizzes
  resources :keywords
  resources :quizzes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
