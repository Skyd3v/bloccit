Rails.application.routes.draw do
  resources :advertisements
  # get 'advertisements/create'
 

  # #1
   resources :posts

  get 'about' => 'welcome#about'

   root 'welcome#index'
end
