$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))

require 'sinatra'
require 'sinatra/contrib'
require 'pg'
require 'sequel'
require 'compass'
require 'sprockets'
require 'sprockets-helpers'
require 'sprockets-sass'
require 'sass'
require 'slim'
require 'crush'
require 'uglifier'

CONFIG = YAML::load(File.open('config/template.yml'))
DB = Sequel.connect(CONFIG['db'])

require 'template/app'

# load all helpers
Dir.glob('template/helpers/*.rb').each { |file| require file }

# load all classes
Dir.glob(File.dirname(__FILE__)+'/template/classes/*.rb') { |file| require file }

# load all models
Dir.glob(File.dirname(__FILE__)+'/template/models/*.rb') { |file| require file }

# load all controllers
Dir.glob(File.dirname(__FILE__)+'/template/controllers/*.rb').each { |file| require file }