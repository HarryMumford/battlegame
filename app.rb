require "sinatra"
require_relative "lib/player"

class Battle < Sinatra::Base

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/battle" do
    $player1 = Player.new(params[:player_1])
    $player2 = Player.new(params[:player_2])
    redirect "/play"
  end

  get "/play" do
    @attack = session[:attack]
    erb(:battle)
  end

  post "/attack" do
    session[:attack] = params["attack"]
    $player2.reduce_hitpoints
    redirect "/play"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
