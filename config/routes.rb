Rails.application.routes.draw do
  #---------------------------accommodation------------------------------------
   get "/" => "accommodation#top"
   post "accommodation/search" => "accommodation#search"
   post "accommodation/search_area" => "accommodation#search_area"
   resources :accommodation , only: [:index, :new, :create, :show, :destroy] do
   end

  #----------------------------------user---------------------------------------
   get "user/logout" => "user#logout"
   post"user/login" => "user#login"
   get "user/login" => "user#login_form"
   get "user/prof" => "user#prof"
   get "user/edit_prof" => "user#edit_prof"

   resources :user, only: [:new, :create, :show, :edit, :update ] do
   end  

  #------------------------------reservation------------------------------------
   get "reservation/confirm" => "reservation#confirm"
   resources :reservation, only: [:index, :new, :create, :show ] do

   end
end
