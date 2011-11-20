require 'rubygems'
require 'sinatra'
require File.dirname(__FILE__)+'/bootstrap'

set :environment, :development

set :port, 8080
set :server, 'thin'

Sinatra::Application.run
