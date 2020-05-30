Rails.application.routes.draw do

  scope "/account" do
    post '/login', to: 'account#login'
    post '/register', to: 'account#register'
  end

  scope "/realm" do
    get '/info', to: 'realm#info'
  end

  namespace :characters do
    get '/all', to: 'characters#all'
    get '/get/:guid', to: 'characters#get'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
