module Template
  class App < Sinatra::Base

    configure do
      set :root, File.dirname(__FILE__)
      set :public_folder, settings.root+'/../../public'
      register Sinatra::Flash

      helpers Sinatra::ContentFor
      helpers Sinatra::Namespace
      helpers Template::Helpers

      use Rack::Session::Cookie
    end

    # use rake-pipline middleware during development
    configure :development do
      require 'rake-pipeline'
      require 'rake-pipeline/middleware'
      use Rake::Pipeline::Middleware, settings.root+'/../../Assetfile'
    end

  end
end