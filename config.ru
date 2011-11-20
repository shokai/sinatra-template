require 'rubygems'
require 'sinatra'
require File.dirname(__FILE__)+'/bootstrap'

set :environemt, :production

run Sinatra::Application
