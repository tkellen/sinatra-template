$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))

# load dependencies
require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/contrib'
require 'sinatra/content_for'
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
require 'coffee-script'

# prepare constants
CONFIG = YAML::load(File.open('config/template.yml'))
DB = Sequel.connect(CONFIG['db'])

# load app
require 'template/helpers/helper'
require 'template/classes/class'
require 'template/models/model'
require 'template/app'
require 'template/controllers/main'
