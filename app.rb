require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      # binding.pry
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @p_name = params["pirate"]["name"]
      @p_weight = params["pirate"]["weight"]
      @p_height = params["pirate"]["height"]
      @ship_1 = params["pirate"]["ships"][0]
      @ship_2 = params["pirate"]["ships"][1]
      # binding.pry
      erb :"pirates/show"
    end
  end
end
