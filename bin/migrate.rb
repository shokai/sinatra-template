#!/usr/bin/env ruby
require File.dirname(__FILE__)+'/../bootstrap'

require 'dm-migrations'
DataMapper.auto_migrate!
DataMapper.auto_upgrade!
