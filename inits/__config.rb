require 'yaml'

class Conf
  def self.[](key)
    conf[key]
  end

  def self.[]=(key,value)
    conf[key] = value
  end

  def self.conf_file
    File.dirname(__FILE__)+'/../config.yml'
  end

  def self.conf
    begin
      @@conf ||= YAML::load self.open_conf_file.read
    rescue => e
      STDERR.puts e
      STDERR.puts "config.yml load error!!"
      exit 1
    end
  end

  def self.open_conf_file(opt=nil, &block)
    if block_given?
      yield open(self.conf_file, opt)
    else
      return open(self.conf_file, opt)
    end
  end
end
