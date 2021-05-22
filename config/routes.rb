Rails.application.routes.draw do
  resources :users
  resources :binhluans


  root "users#index"
 #login 
 get "/login", to:"session#login"
 post  "/login"    => "session#create"
 delete "/logout"   => "session#destroy"
 #register
 get "/register", to:"users#new"
 #about
 get "/About", to:"users#about"
  #contact
  get "/Contact", to:"binhluans#contact"
  post  "/Contact"    => "binhluans#create"

  #Places
get "/Places", to:"diadiem#location"
get "/Places/Hotel/:idplaces", to:"diadiem#hotel"

#Blogs
get "/Blog", to:"blogs#show"
get "/Single/:idblog", to:"blogs#singleblog"

#edit
get "/Edit", to:"users#edit"

#cart
get "Cart/:idhanghoa", to:"cart#cart"
post  "/login"    => "cart#newCart"
#Giohang
get "/Giohang/:iduser", to:"cart#giohang"

#ADMIN
  #Dashboard
    get "/admin", to:"admins#dashboard"
    get "/Admin/dashboard", to:"admins#dashboard"
    get "/Admin/users", to:"admins#userProfile"
    get "/Admin/tables", to:"admins#tables"
    get "/Admin/feedback", to:"admins#feedback"
    get "/Admin/donhang", to:"admins#donhang"
    get "/Admin/blog", to:"admins#blog"
  
  #add 
    get "/Admin/product/:page", to:"admins#add"
    get "/Admin/delete_ajax",to:"admins#delete_ajax"
    get "/Admin/e_Order",to:"admins#e_Order"











end
