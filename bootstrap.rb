require 'yaml'

class Bootstrap
  def self.default
    []
  end

  def self.init(*inits)
    [default, inits].flatten.uniq.each do |cat|
      Dir.glob("#{File.dirname(__FILE__)}/#{cat}/*.rb").each do |rb|
        puts "load #{rb}"
        require rb
      end
    end
  end
end

class Conf
  def self.[](key)
    ENV[key] || conf[key]
  end

  def self.[]=(key,value)
    conf[key] = value
  end

  def self.file
    @@file ||= File.dirname(__FILE__)+'/config.yml'
  end

  def self.file=(name)
    @@file = name
  end

  def self.conf
    begin
      @@conf ||= YAML::load self.open.read
    rescue => e
      STDERR.puts e
      STDERR.puts "config.yml load error!!"
      exit 1
    end
  end

  def self.open(opt=nil, &block)
    if block_given?
      yield File.open(self.file, opt)
    else
      return File.open(self.file, opt)
    end
  end

  def self.save
    self.open 'w+' do |f|
      f.write self.to_yaml
    end
  end

  def self.to_yaml
    self.conf.to_yaml
  end

  def self.to_json
    self.conf.to_json
  end
end
