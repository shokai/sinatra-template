#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'
require 'dm-migrations'
require File.dirname(__FILE__)+'/../bootstrap'
Bootstrap.init :inits, :models

puts 'migration will DELETE and RESET your DB.'
puts 'initialize DB?'
puts '[y/N]'
exit unless STDIN.gets =~ /y/i

DataMapper.auto_migrate!

puts 'DB migrate success!!'
