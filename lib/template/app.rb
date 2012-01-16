module Template 
  
  class App < Sinatra::Base

    helpers Sprockets::Helpers
    helpers Sinatra::ContentFor

  end
  
end