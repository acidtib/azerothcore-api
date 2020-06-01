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
  end

  namespace :characters do
    get '/all', to: 'characters#all'
    get '/get/:guid', to: 'characters#get'
  end

  get '/*a', to: 'application#not_found'
  post '/*a', to: 'application#not_found'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
