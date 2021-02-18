require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions
  configure(:development) { set :session_secret, “something” }

  get '/battle' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect /'play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :play
  end

  get '/attack' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :attack
  end

  run! if app_file == $0

end