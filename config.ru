require File.dirname(__FILE__)+'/config/env.rb'
require File.dirname(__FILE__)+'/app/app'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.css_compressor = Crush::Sass::Engine
  environment.js_compressor = Crush::Uglifier
  environment.append_path 'app/assets/js'
  environment.append_path 'app/assets/css'
 
  Sprockets::Helpers.configure do |config|
    config.environment = environment
    config.prefix = "/assets"
    config.digest = true
  end
  
  run environment
end

map '/' do
  run Main
end

