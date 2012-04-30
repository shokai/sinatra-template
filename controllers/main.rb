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

  @title = @@conf['title']
  haml :index
end

get '/omikuji.json' do
  arr = ['大吉', '中吉', '小吉', 'マジキチ', '凶']

  o = Omikuji.new(:result => arr.choice)
  o.save!
  
  @mes = {
    :result => o.result,
    :time => o.time
  }.to_json
end
