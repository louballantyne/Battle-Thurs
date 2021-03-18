require 'sinatra/base'
require_relative 'player'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  post '/attack_player_2' do
    $player2.hit_points -= 10
    $player2.attacked = true
    $player1.attacked = false
    redirect '/play'
  end

  post '/attack_player_1' do
    $player1.hit_points -= 10
    $player1.attacked = true
    $player2.attacked = false
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

run! if app_file == $0

end
