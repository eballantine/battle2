require "sinatra/base"
require "sinatra/reloader"

class Battle < Sinatra::Base

  enable :sessions
 
  get '/' do
    erb :index
  end

  post "/names" do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    session[:player_1_hit_points] = 100
    session[:player_2_hit_points] = 100
    redirect "/play"
  end
  
  get "/play" do
    @player_1 = session[:player_1] 
    @player_2 = session[:player_2] 
    @player_1_hit_points = session[:player_1_hit_points] 
    @player_2_hit_points = session[:player_2_hit_points] 
    erb :play
  end

  get '/attack' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :attack
  end

  # post "/attack" do
  #   session[:player_2_hit_points] -= 10
  #   redirect "/play"
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
