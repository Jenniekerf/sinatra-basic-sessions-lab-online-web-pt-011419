require_relative 'config/environment'

class App < Sinatra::Base
  
 configure do
  enable :sessions
  set :session_secret, "hello"
end 

get '/' do 
  erb :index
end

post '/checkout' do 
  @session = Session.new(params[:item])
  erb :index
end

  
end