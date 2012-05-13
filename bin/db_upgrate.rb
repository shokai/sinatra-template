#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'
require 'dm-migrations'

[:inits, :models].each do |dir|
  Dir.glob(File.dirname(__FILE__)+"/../#{dir}/*.rb").each do |rb|
    puts "loading #{rb}"
    require rb
  end
end

DataMapper.auto_upgrade!
