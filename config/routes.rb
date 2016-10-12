Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  #Add contact page here

  get 'welcome/contact'

  #Assign default page on app
  root 'welcome#index'

end
