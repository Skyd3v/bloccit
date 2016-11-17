Rails.application.routes.draw do
    resources :topics do
        # #34
        resources :posts, except: [:index]
    end
    resources :posts, only: [] do
        # #5
        resources :comments, only: [:create, :destroy]
        post '/up-vote' => 'votes#up_vote', as: :up_vote
        post '/down-vote' => 'votes#down_vote', as: :down_vote
        resources :favorites, only: [:create, :destroy]
    end

    resources :users, only: [:new, :create, :show]
    resources :sessions, only: [:new, :create, :destroy]

    get 'about' => 'welcome#about'

    root 'welcome#index'
end
