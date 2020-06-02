Rails.application.routes.draw do

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  
  get '/account', to: 'account#account'
  scope "/account" do
    post '/login', to: 'account#login'
    post '/register', to: 'account#register'
  end

  scope "/realm" do
    get '/info', to: 'realm#info'
    get '/uptime', to: 'realm#uptime'
    get '/characters', to: 'realm#characters'
  end

  namespace :characters do
    get '/all', to: 'characters#all'
    post '/get', to: 'characters#get'
  end

  get '/*a', to: 'application#not_found'
  post '/*a', to: 'application#not_found'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
