Rails.application.routes.draw do
  devise_for :employees
  root "departments#index"
  resources :employees do
    resources :feedbacks
  end
  resources :departments do
    resources :feedbacks
  end
  resources :feedbacks
  
end
