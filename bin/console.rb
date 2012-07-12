#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'
require 'irb'
require 'yaml'
require File.expand_path '../bootstrap', File.dirname(__FILE__)
Bootstrap.init :inits, :models

IRB.start
