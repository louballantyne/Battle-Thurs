require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.instance
    Game.instance.setup(params[:player1],params[:player2])
    redirect '/play'
  end

  post '/attack' do
    Game.instance.attack(Game.instance.target)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

run! if app_file == $0

end
