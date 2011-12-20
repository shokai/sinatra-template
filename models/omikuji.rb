
class Omikuji
  include Mongoid::Document
  field :time, :type => Time , :default => lambda{Time.now}
  field :result, :type => String, :default => ''
end
