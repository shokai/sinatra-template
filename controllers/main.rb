# -*- coding: utf-8 -*-
before '/*.json' do
  content_type 'application/json'
end

get '/' do
  @count = Omikuji.count
  @last = Omikuji.last
  @daikichi = Omikuji.find_by_result('大吉')
  @kichi = Omikuji.find_by_result(/吉/)
  @latests = Omikuji.latests(5)
  @title = Conf['title']
  haml :index
end

get '/omikuji.json' do
  o = Omikuji.new(:result => Conf['omikuji'].choice)
  o.save!
  @mes = {
    :result => o.result,
    :time => o.time
  }.to_json
end
