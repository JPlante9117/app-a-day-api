Rails.application.routes.draw do
  resources :goals
  resources :job_labels
  resources :labels
  resources :jobs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
