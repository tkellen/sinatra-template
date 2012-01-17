require File.expand_path(File.dirname(__FILE__) + '/lib/template')

use Rack::Session::Cookie

map '/assets' do
  environment = Sprockets::Environment.new
  environment.css_compressor = Crush::Sass::Engine
  environment.js_compressor = Crush::Uglifier
  environment.append_path 'lib/template/assets/js'
  environment.append_path 'lib/template/assets/css'
 
  Sprockets::Helpers.configure do |config|
    config.environment = environment
    config.prefix = "/assets"
    config.digest = true
  end
  
  run environment
end

map '/' do
  run Template::App
end

DB.disconnect
