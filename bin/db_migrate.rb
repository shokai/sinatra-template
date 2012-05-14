#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'
require 'dm-migrations'
require File.dirname(__FILE__)+'/../config'
Conf.init :inits, :models

puts 'initialize DB?'
puts '[y/N]'
exit unless STDIN.gets =~ /y/i

DataMapper.auto_migrate!

puts 'DB migrate success!!'
