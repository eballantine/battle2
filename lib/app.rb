require "sinatra/base"

class Battle < Sinatra::Base
 
  get '/' do
    "Battle"
    "Testing infrastructure working!"
    erb:index
  end

  post '/names' do
    "#{params[:player_1]} and #{params[:player_2]} will be playing Battle!"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
