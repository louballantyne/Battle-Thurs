require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/attack' do
    Game.stored_game.attack
    redirect '/play'
  end

  post '/names' do
    Game.new_game(params[:player1],params[:player2])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

run! if app_file == $0

end
