require 'mongoid'

Mongoid.configure do |conf|
  host = @@conf['mongo']['host']
  port = @@conf['mongo']['port']
  conf.master = Mongo::Connection.new.db(@@conf['mongo']['database'])
end
