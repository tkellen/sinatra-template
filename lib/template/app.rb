module Template 
  class App < Sinatra::Base
  
    configure do
      set :root, File.dirname(__FILE__)
      set :public_folder, settings.root+'/../../public'
      helpers Sinatra::ContentFor
      helpers Sprockets::Helpers
      helpers Template::Helpers
    end

  end  
end