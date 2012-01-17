$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))

require 'sinatra/base'
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

# prepare constants
CONFIG = YAML::load(File.open('config/template.yml'))
DB = Sequel.connect(CONFIG['db'])

# load app
require 'template/helpers/helper'
require 'template/classes/class'
require 'template/models/model'
require 'template/app'
require 'template/controllers/main'
