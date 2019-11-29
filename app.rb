require "sinatra"
require_relative "lib/player"
require_relative "lib/game"

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
    erb(:battle)
  end

  post "/attack" do
    session[:attack_message] = "Successful attack!"
    Game.new.attack($player2)
    redirect "/play"
  end

  run! if app_file == $0
end
