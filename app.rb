require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  configure(:development) { set :session_secret, "something" }


  get '/battle' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:player_1_name], params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    $game.attack($player_2)
    erb :attack
  end

  run! if app_file == $0
  

end