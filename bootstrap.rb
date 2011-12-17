require 'rubygems'
require 'bundler/setup'
require 'rack'
require 'sinatra/reloader' if development?
require 'sinatra/content_for'
require 'yaml'
require 'json'
require 'haml'
require 'sass'

begin
  @@conf = YAML::load open(File.dirname(__FILE__)+'/config.yaml').read
  p @@conf
rescue => e
  STDERR.puts 'config.yaml load error!'
  STDERR.puts e
  exit 1
end

[:helpers, :models ,:controllers].each do |dir|
  Dir.glob(File.dirname(__FILE__)+"/#{dir}/*.rb").each do |rb|
    puts "loading #{rb}"
    require rb
  end
end

set :haml, :escape_html => true

