Rails.application.routes.draw do

  get '/news', to: 'news#all'
  get '/news/get/:slug', to: 'news#get'
  post '/news/create', to: 'news#create'

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
    get '/get/:params', to: 'characters#get'
  end

  get '/*a', to: 'application#not_found'
  post '/*a', to: 'application#not_found'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
