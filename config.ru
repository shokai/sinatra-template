require 'rubygems'
require 'bundler/setup'
require 'rack'
require 'sinatra'
$stdout.sync = true if development?
require 'sinatra/reloader' if development?
require 'sinatra/content_for'
require 'yaml'
require 'json'
require 'haml'
require 'sass'
require File.dirname(__FILE__)+'/bootstrap'
Bootstrap.init :inits, :models, :helpers, :controllers

DataMapper::Logger.new($stdout, :debug)
DataMapper.finalize

set :haml, :escape_html => true

run Sinatra::Application
