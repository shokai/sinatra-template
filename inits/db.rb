require 'mongoid'

Mongoid.configure do |conf|
  host = Conf['mongo']['host']
  port = Conf['mongo']['port']
  conf.master = Mongo::Connection.new.db(Conf['mongo']['database'])
end
