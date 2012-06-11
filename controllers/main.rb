before '/*.json' do
  content_type 'application/json'
end

get '/' do
  @title = Conf['title']
  haml :index
end

get '/omikuji.json' do
  @mes = {
    :result => Conf['omikuji'].sample,
    :time => Time.now.to_s
  }.to_json
end
