
class Omikuji
  include DataMapper::Resource
  property :id, Serial
  property :time, Time , :default => lambda{Time.now}
  property :result, String, :default => ''
end
