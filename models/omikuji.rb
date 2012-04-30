
class Omikuji
  include DataMapper::Resource
  property :id, Serial
  property :time, Time , :default => lambda{Time.now}
  property :result, String, :default => ''

  def self.last
    self.all(:order => [:time.desc], :limit => 1).first
  end

  def self.find_by_result(pattern)
    self.all(:result => pattern)
  end

  def self.latests(num=10)
    self.all(:order => [:time.desc], :limit => num)
  end
end
