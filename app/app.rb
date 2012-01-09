class Main < Sinatra::Base

  helpers Sprockets::Helpers
  helpers Sinatra::ContentFor

  get '/' do
    slim :index
  end

end

