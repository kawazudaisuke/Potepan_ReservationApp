Rails.application.routes.draw do
  
  get "user/show" => "user#show"
  get "user/login" => "user#login_form"
  post "user/login" => "user/login"
  get "user/logout" => "user#logout"
  get "user/signup" => "user#signup"
  get "user/edit" => "user#edit"
  get "user/prof" => "user#prof"
  get "user/edit_prof" => "user#edit_prof"
  post "user/create" => "user#create"
  post "user/update" => "user#update"
 
  get "/" => "accommodation#top"
  get "accommodation/show" => "accommodation#show"
  get "accommodation/index" => "accommodation#index"
  post "accommodation/create" => "accommodation#create"
  get "accommodation/new/" => "accommodation#new"
  post "accommodation/search" => "accommodation#search"
  post "accommodation/search_area" => "accommodation#search_area"
  post "accommodation/destroy" => "accommodation#destroy"
  
  get "reservation/index" => "reservation#index"
  get "reservation/new/:id" => "reservation#new"  #idは施設ID
  post "reservation/check" => "reservation#check"
  post "reservation/create" => "reservation#create"
  get "reservation/confirm" => "reservation#confirm"
end
