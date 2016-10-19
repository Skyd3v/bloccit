Rails.application.routes.draw do
resources :questions
  # #1
   resources :posts

  get 'about' => 'welcome#about'

   root 'welcome#index'
end
