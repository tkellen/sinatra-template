require File.expand_path(File.dirname(__FILE__) + '/lib/template')

# enable cookies
use Rack::Session::Cookie

# rewrite cachebusted asset urls
use Rack::Rewrite do
  rewrite %r{^/assets/cb(.[^\/]*)/(.*)}, '/assets/$2'
end

run Template::App

DB.disconnect