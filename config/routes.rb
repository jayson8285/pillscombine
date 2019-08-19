Rails.application.routes.draw do

  get 'comments/create'
  devise_for :users
  root 'home#index'
  
  get 'home/index'
  get 'home/more'

get "posts/index/" => "posts#index"
post "posts/create" => "posts#create"
get "posts/:id/show" => "posts#show"
get "posts/:id/edit" => "posts#edit"

get "posts/:post_id/likes" => "like#create"

 post "posts/:post_id/comments" => "comments#create"
  delete "comments/:id" => "comments#destroy"
  
resources :posts do
	resources :comments, only: [:create]
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
