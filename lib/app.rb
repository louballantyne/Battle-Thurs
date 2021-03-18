require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    session[:player_2_HP] = 100
    redirect '/play'
  end

  post '/attack_player_2' do
    session[:player_2_HP] -= 1
    session[:player_2_attacked] = true
    session[:player_1_attacked] = false
    redirect '/play'
  end


  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player_2_HP = session[:player_2_HP]
    @player_1_attacked = session[:player_1_attacked]
    @player_2_attacked = session[:player_2_attacked]
    erb(:play)
  end

run! if app_file == $0

end
