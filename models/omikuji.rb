
class Omikuji
  include Mongoid::Document
  field :time, :type => Time , :default => lambda{Time.now}
  field :result, :type => String, :default => ''

  def self.last
    self.all.desc(:time).limit(1).first
  end

  def self.find_by_result(pattern)
    self.where(:result => pattern)
  end

  def self.latests(num=10)
    self.all.desc(:time).limit(num)
  end
end
