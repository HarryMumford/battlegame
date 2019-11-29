require "sinatra"
require_relative "lib/player"
require_relative "lib/game"

class Battle < Sinatra::Base

  enable :sessions

  get "/" do
    erb(:index)
  end

  get "/play" do
    @attack_message = session.delete(:attack_message)
    erb(:play)
  end

  post "/attack" do
    session[:attack_message] = "Successful attack!"
    @attack_message = session[:attack_message]
    $game.attack($game.player2)
    redirect "/play"
  end

  post "/names" do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    $game = Game.new(@player1, @player2)
    redirect "/play"
  end

  run! if app_file == $0
end
