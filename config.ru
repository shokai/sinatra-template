require 'rubygems'
require 'bundler/setup'
require 'rack'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/content_for'
require 'yaml'
require 'json'
require 'haml'
require 'sass'
require File.dirname(__FILE__)+'/bootstrap'
Bootstrap.init :helpers, :controllers

set :haml, :escape_html => true

run Sinatra::Application
