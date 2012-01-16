module Template
  class App < Sinatra::Base
    
    get '/' do
      slim :index
    end

    get '/config' do
      CONFIG
    end

  end
end