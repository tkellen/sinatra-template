require File.dirname(__FILE__)+'/lib/template'

# enable cookies
use Rack::Session::Cookie

# rewrite cachebusted asset urls
use Rack::Rewrite do
  rewrite %r{^/assets/(.*)/(.*)}, '/assets/$2'
end

run Template::App

DB.disconnect