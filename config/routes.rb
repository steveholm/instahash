Hashing::Application.routes.draw do
  
  get "/profile", :controller => "profile", :action => "myphotos"
end
