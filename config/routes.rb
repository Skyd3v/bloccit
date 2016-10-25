Rails.application.routes.draw do

  resources :topics
  # #1
   resources :posts

  get 'about' => 'welcome#about'

   root 'welcome#index'
end
