Rails.application.routes.draw do
  # #1
   resources :posts

  get 'about' => 'welcome#about'

   root 'welcome#index'
end
