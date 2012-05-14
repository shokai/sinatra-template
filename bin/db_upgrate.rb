#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'
require 'dm-migrations'
require File.dirname(__FILE__)+'/../config'
Conf.init :inits, :models

DataMapper.auto_upgrade!
