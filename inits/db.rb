require 'mongoid'

Mongoid.logger.level =
  case ENV['RACK_ENV']
  when 'production'
    Logger::WARN
  else
    Logger::DEBUG
  end

Mongoid.configure do |conf|
  h = {'uri' => ENV['MONGOLAB_URI'] || ENV['MONGOHQ_URL']}
  unless h['uri']
    yaml = YAML.load(open(File.expand_path '../mongoid.yml', File.dirname(__FILE__)).read)
    h = yaml[ ENV['RACK_ENV'] || 'development' ]
  end
  conf.from_hash h
end
