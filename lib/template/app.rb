module Template
  class App < Sinatra::Base

    configure do
      set :root, File.dirname(__FILE__)
      set :public_folder, settings.root+'/../../public'
      set :cachebust, Digest::SHA1.hexdigest(CONFIG['version'])

      # compile assets at startup
      system('bundle exec rakep clean');
      system('bundle exec rakep build');

      register Sinatra::Flash
      helpers Sinatra::ContentFor
      helpers Sinatra::Namespace
      helpers Template::Helpers
    end

    # use rake-pipline middleware during development
    configure :development do
      require 'rake-pipeline'
      require 'rake-pipeline/middleware'
      use Rake::Pipeline::Middleware, settings.root+'/../../Assetfile'
    end

  end
end
