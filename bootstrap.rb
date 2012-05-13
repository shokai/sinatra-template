require 'rubygems'
require 'bundler/setup'
require 'rack'
require 'sinatra/reloader' if development?
require 'sinatra/content_for'
require 'yaml'
require 'json'
require 'haml'
require 'sass'

[:inits, :helpers, :models ,:controllers].each do |dir|
  Dir.glob(File.dirname(__FILE__)+"/#{dir}/*.rb").sort.each do |rb|
    puts "loading #{rb}"
    require rb
  end
end

set :haml, :escape_html => true

