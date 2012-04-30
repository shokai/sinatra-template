require 'data_mapper'

DataMapper.setup(:default, @@conf['db'])
