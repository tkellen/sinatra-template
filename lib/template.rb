$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))

# load dependencies
require 'digest/sha1'
require 'rack'
require 'rack-rewrite'
require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/contrib'
require 'sinatra/content_for'
require 'sinatra/namespace'
require 'pg'
require 'sequel'
require 'sass'
require 'slim'

# prepare constants
CONFIG = YAML::load(File.open('config/template.yml'))
DB = Sequel.connect(CONFIG['db'])

# load app
require 'template/helpers/helper'
require 'template/classes/class'
require 'template/models/model'
require 'template/app'
require 'template/controllers/main'
