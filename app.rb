require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/battle' do
    erb(:index)
  end

  get '/names' do
    @name = session[:name]
    @name2 = session[:name2]
    erb :names
  end

  post '/names' do
    session[:name] = params[:Player_1]
    session[:name2] = params[:Player_2]
    redirect '/names'
  end

  run! if app_file == $0

end