require "sinatra"

class Battle < Sinatra::Base
  attr_reader :attack

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/battle" do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect "/play"
  end

  get "/play" do
    @attack = session[:attack]
    erb(:battle)
  end

  post "/attack" do
    session[:attack] = params["attack"]
    redirect "/play"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
