require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    "Hi!"
  end
run! if app_file == $0
end
